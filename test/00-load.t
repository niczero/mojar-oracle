use Mojo::Base -strict;
use Test::More;

use_ok 'Mojar::Oracle';
diag "Testing Mojar::Oracle $Mojar::Oracle::VERSION, Perl $], $^X";
use_ok 'Mojar::Oracle::Connector';

done_testing();
