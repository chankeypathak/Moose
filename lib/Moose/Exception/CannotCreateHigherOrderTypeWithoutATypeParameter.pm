package Moose::Exception::CannotCreateHigherOrderTypeWithoutATypeParameter;

use Moose;
with 'Moose::Exception::Role::TypeConstraint', 'Moose::Exception';

sub _build_message {
    "You cannot create a Higher Order type without a type parameter";
}

1;
