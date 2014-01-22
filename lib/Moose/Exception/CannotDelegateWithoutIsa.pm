package Moose::Exception::CannotDelegateWithoutIsa;

use Moose;
with 'Moose::Exception::Role::Attribute', 'Moose::Exception';

sub _build_message {
    "Cannot delegate methods based on a Regexp without a type constraint (isa)";
}

1;
