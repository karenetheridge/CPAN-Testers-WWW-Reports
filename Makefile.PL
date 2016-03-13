#!/usr/bin/perl

use strict;
use warnings;
use 5.006;

use ExtUtils::MakeMaker;

WriteMakefile(
    AUTHOR              => 'Barbie (BARBIE) <barbie@cpan.org>',
    NAME                => 'CPAN::Testers::WWW::Reports',
    VERSION_FROM        => 'lib/CPAN/Testers/WWW/Reports.pm',
    ABSTRACT            => 'The CPAN Testers Reports website',
    NO_META             => 1,
    LICENSE             => 'artistic_2',
    PREREQ_PM           => {

        # Labyrinth Modules
        'Labyrinth'                         => '5.27',
        'Labyrinth::DIUtils::ImageMagick'   => '5.04',
        'Labyrinth::Plugin::Core'           => '5.18',
        'Labyrinth::Plugin::Requests'       => '1.00',
        'Labyrinth::Plugin::CPAN'           => '3.50',

        # Perl Core Modules
        'CGI'                               => 0,
        'Carp'                              => 0,
        'Cwd'                               => 0,
        'Data::Dumper'                      => 0,
        'File::Basename'                    => 0,
        'File::Path'                        => 0,
        'IO::File'                          => 0,

        # Other Prereqs
        'Class::Accessor::Fast'             => '0',
        'Clone'                             => '0',
        'CPAN::Testers::Common::Article'    => '0',
        'CPAN::Testers::Common::Utils'      => '0',
        'CPAN::Testers::Fact::LegacyReport' => '0',
        'CPAN::Testers::Fact::TestSummary'  => '0',
        'Data::FlexSerializer'              => '0',
        'Email::Address'                    => '0',
        'File::Slurper'                     => '0',
        'GD::Graph::lines'                  => '0',
        'GD::Graph::colour'                 => '0',
        'HTML::Entities'                    => '0',
        'JSON::XS'                          => '0',
        'Metabase::Resource'                => '0',
        'Sort::Versions'                    => '0',
        'Time::Local'                       => '0',
        'version'                           => '0',
        'WWW::Mechanize'                    => '0',
        'XML::RSS'                          => '0',
        'YAML::XS'                          => '0',

        # for testing only
        'Test::More'                        => '0',

        # for toolkit scripts
        'File::Find::Rule'                  => '0',
        'Getopt::Long'                      => '0'

    },
    META_MERGE => {
        'meta-spec' => { version => 2 },
        dynamic_config => 0,
        keywords => [ qw(qa cpan testing) ],
        no_index => {
            directory => ['t','examples','vhost'],
        },
        resources => {
            homepage => 'https://www.cpantesters.org',
            repository => {
                url => 'https://github.com/barbie/cpan-testers-www-reports.git',
                web => 'https://github.com/barbie/cpan-testers-www-reports',
                type => 'git',
            },
            bugtracker => {
                mailto => 'bug-CPAN-Testers-WWW-Reports@rt.cpan.org',
                web => 'https://rt.cpan.org/Public/Dist/Display.html?Name=CPAN-Testers-WWW-Reports',
            },
        },
    },
);
