use strict;
use Test::More;

use Crypt::MySQL qw(password);

unless (eval { require DBD::mysql } && eval { require DBI }) {
    plan skip_all => "no DBD::mysql";
}
else {
    plan tests => 1;
}

my $dbh = DBI->connect("dbi:mysql:test", "root", "", {
    RaiseError => 1, PrintError => 1
}) or die $DBI::errstr;
my $tm = time. "";
my $sth = $dbh->prepare("SELECT PASSWORD(?)");
$sth->execute($tm);
my($real_mysql) = $sth->fetchrow_array;
$sth->finish;
$dbh->disconnect;

is($real_mysql, password($tm));
