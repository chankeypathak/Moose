package Moose::Exception::CreateTakesHashRefOfMethods;

use Moose;
with 'Moose::Exception::Role::RoleForCreate', 'Moose::Exception';

sub _build_message {
    "You must pass a HASH ref of methods";
}

1;
