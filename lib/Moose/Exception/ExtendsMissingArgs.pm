package Moose::Exception::ExtendsMissingArgs;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception';

sub _build_message {
    "Must derive at least one class";
}

1;
