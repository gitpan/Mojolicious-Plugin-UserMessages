
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Mojolicious Plugin to manage user message(s) qeue(s)",
  "AUTHOR" => "Bruno Tavares <eu\@brunotavares.net>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Mojolicious-Plugin-UserMessages",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Mojolicious::Plugin::UserMessages",
  "PREREQ_PM" => {
    "Carp" => 0,
    "Mojo::Base" => 0,
    "Mojolicious" => 0
  },
  "TEST_REQUIRES" => {},
  "VERSION" => "0.001",
  "test" => {
    "TESTS" => ""
  }
);


my %FallbackPrereqs = (
  "Carp" => 0,
  "Mojo::Base" => 0,
  "Mojolicious" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



