package Moose::Exception::InvalidBaseTypeGivenToCreateParameterizedTypeConstraint;

use Moose;
with 'Moose::Exception::Role::TypeConstraint', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "Could not locate the base type (".$self->type_name.")";
}

1;
