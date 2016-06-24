use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'Dancer2::Plugin::Interchange6::Blog',
    AUTHOR        => q{Peter Mottram (SysPete) <peter@sysnix.com>},
    VERSION_FROM  => 'lib/Dancer2/Plugin/Interchange6/Blog.pm',
    ABSTRACT_FROM => 'lib/Dancer2/Plugin/Interchange6/Blog.pm',
    ( $ExtUtils::MakeMaker::VERSION >= 6.47
        ? ( 'LICENSE' => 'perl' )
        : () ),
    MIN_PERL_VERSION => '5.010000',
    PL_FILES         => {},
    BUILD_REQUIRES   => {
        'File::Temp'                 => 0,
        'Module::Find'               => 0,
        'Test::More'                 => '0.94',    # subtest
        'Test::Deep'                 => 0,
        'Test::Exception'            => 0,
        'Test::WWW::Mechanize::PSGI' => '0.35',
    },
    PREREQ_PM => {
        'Interchange6::Schema' => '0.110',
        'Interchange6'         => '0.120',
        'Dancer2'              => '0.200000',
        'Dancer2::Plugin'      => 0,
        'Dancer2::Core::Types' => 0,
    },
    dist => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Dancer2-Plugin-Interchange6-Blog-*' },
    test  => { TESTS => join( ' ', ( glob('t/*.t'), glob('t/*/*.t') ) ) },
    META_MERGE => {
        resources => {
            repository => 'https://github.com/interchange/Dancer2-Plugin-Interchange6-Blog.git',
            bugtracker => 'https://github.com/interchange/Dancer2-Plugin-Interchange6-Blog/issues',
            IRC => 'irc://irc.freenode.net/#interchange',
        },
    },
);
