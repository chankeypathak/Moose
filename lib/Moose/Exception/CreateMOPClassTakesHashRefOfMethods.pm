package Moose::Exception::CreateMOPClassTakesHashRefOfMethods;

use Moose;
with 'Moose::Exception::Role::RoleForCreateMOPClass', 'Moose::Exception';

sub _build_message {
    "You must pass an HASH ref of methods";
}

1;
