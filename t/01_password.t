use strict;
use Test::More tests => 1;

use Crypt::MySQL ();

is(Crypt::MySQL::password("foobar"), "4655c05b05f11fab");
