package Moose::Exception::CannotOverrideALocalMethod;

use Moose;
with 'Moose::Exception::Role::Role', 'Moose::Exception';

has 'method_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

sub _build_message {
    my $self = shift;
    "Cannot add an override of method '".$self->method_name."' because there is a local version of '".$self->method_name."'";
}

1;
