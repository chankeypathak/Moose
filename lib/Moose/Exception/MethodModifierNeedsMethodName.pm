package Moose::Exception::MethodModifierNeedsMethodName;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception';

sub _build_message {
    "You must pass in a method name";
}

1;
