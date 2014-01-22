package Moose::Exception::MustDefineAnAttributeName;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception';

sub _build_message {
    "You must define an attribute name";
}

1;
