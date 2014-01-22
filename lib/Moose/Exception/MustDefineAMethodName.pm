package Moose::Exception::MustDefineAMethodName;

use Moose;
with 'Moose::Exception::Role::Instance', 'Moose::Exception';

sub _build_message {
    "You must define a method name";
}

1;
