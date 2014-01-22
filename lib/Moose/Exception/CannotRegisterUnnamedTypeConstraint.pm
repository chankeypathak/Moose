package Moose::Exception::CannotRegisterUnnamedTypeConstraint;

use Moose;
with 'Moose::Exception::Role::TypeConstraint', 'Moose::Exception';

sub _build_message {
    "can't register an unnamed type constraint";
}

1;
