use 5.010_001;
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME         => 'Mojar::Oracle',
  VERSION_FROM => 'lib/Mojar/Oracle.pm',
  ABSTRACT     => 'Utilities for Oracle databases',
  AUTHOR       => 'Nic Sandfield <niczero@cpan.org>',
  LICENSE      => 'artistic_2',
  META_MERGE   => {
    no_index  => {directory => [qw(data test)]},
    requires  => {perl => 5.010_001},
    resources => {
      homepage   => 'http://niczero.github.com/mojar-oracle',
      license    => 'http://www.opensource.org/licenses/artistic-license-2.0',
      repository => 'http://github.com/niczero/mojar-oracle',
      bugtracker => 'http://github.com/niczero/mojar-oracle/issues',
      x_IRC      => 'irc://irc.perl.org/#mojo'
    }
  },
  BUILD_REQUIRES => {'Test::More' => 0},
  CONFIGURE_REQUIRES => {'ExtUtils::MakeMaker' => 6.3},
  PREREQ_PM => {
    Mojolicious   => 7.15,
    Mojar         => 2,
    DBI           => 1.53,
    'DBD::Oracle' => 1.64
  },
  EXE_FILES => [],
  test => {TESTS => 'test/*.t'}
);
