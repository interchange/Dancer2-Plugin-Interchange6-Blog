package Dancer2::Plugin::Interchange6::Blog;

use strict;
use warnings;

=head1 NAME

Dancer2::Plugin::Interchange6::Blog - Blog plugin for the Interchange6 open source shop machine

=head2 VERSION

0.001

=cut

our $VERSION = '0.001';

use Dancer2::Core::Types;
use Dancer2::Plugin;

# config

# plugins we use

has plugin_dbic => (
    is      => 'ro',
    is      => 'lazy',
    default => sub {
        $_[0]->app->with_plugin('Dancer2::Plugin::DBIC');
    },
    handles  => [ 'resultset', 'schema' ],
    init_arg => undef,
);

=head1 REQUIREMENTS

All Interchange6 Dancer2 applications need to use the L<Dancer2::Session::DBIC>
engine.

The easiest way to configure this is in your C<config.yml> (or whatever other
configuration file you prefer):

  plugins
    DBIC:
      default:
        schema_class: Interchange6::Schema
        # ... other DBIC plugin config here
  engines:
    session:
      DBIC:
        db_connection_name: default # connection name from DBIC plugin
  session: DBIC

=head1 CONFIGURATION

Available configuration options:

  plugins:
    Interchange6::Blog:

1;
