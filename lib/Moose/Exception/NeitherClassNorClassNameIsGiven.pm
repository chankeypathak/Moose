package Moose::Exception::NeitherClassNorClassNameIsGiven;

use Moose;
with 'Moose::Exception';

sub _build_message {
    "You need to give class or class_name or both";
}

1;
