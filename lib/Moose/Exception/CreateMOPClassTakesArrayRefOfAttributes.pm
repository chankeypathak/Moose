package Moose::Exception::CreateMOPClassTakesArrayRefOfAttributes;

use Moose;
with 'Moose::Exception::Role::RoleForCreateMOPClass', 'Moose::Exception';

sub _build_message {
    "You must pass an ARRAY ref of attributes";
}

1;
