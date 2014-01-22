package Moose::Exception::InvalidTypeGivenToCreateParameterizedTypeConstraint;

use Moose;
with 'Moose::Exception::Role::TypeConstraint', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "Could not parse type name (".$self->type_name.") correctly";
}

1;
