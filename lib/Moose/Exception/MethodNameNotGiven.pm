package Moose::Exception::MethodNameNotGiven;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception';

sub _build_message {
    "You must define a method name to find";
}

1;
