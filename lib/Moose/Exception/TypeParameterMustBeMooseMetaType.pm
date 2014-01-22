package Moose::Exception::TypeParameterMustBeMooseMetaType;

use Moose;
with 'Moose::Exception::Role::TypeConstraint', 'Moose::Exception';

sub _build_message {
    "The type parameter must be a Moose meta type";
}

1;
