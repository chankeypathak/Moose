package Moose::Exception::CreateTakesHashRefOfAttributes;

use Moose;
with 'Moose::Exception::Role::RoleForCreate', 'Moose::Exception';

sub _build_message {
    "You must pass a HASH ref of attributes";
}

1;
