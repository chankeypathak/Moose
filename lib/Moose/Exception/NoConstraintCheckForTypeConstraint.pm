package Moose::Exception::NoConstraintCheckForTypeConstraint;

use Moose;
with 'Moose::Exception::Role::TypeConstraint', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "Could not compile type constraint '".$self->type_name."' because no constraint check";
}

1;
