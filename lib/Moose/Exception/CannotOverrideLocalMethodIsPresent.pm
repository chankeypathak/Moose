package Moose::Exception::CannotOverrideLocalMethodIsPresent;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception::Role::Method', 'Moose::Exception';

sub _build_message {
    "Cannot add an override method if a local method is already present";
}

1;
