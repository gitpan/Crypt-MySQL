use strict;
use Test::More tests => 1;

use Crypt::MySQL qw(password);

is(password("barbaz"), "5256847878f9978f");
