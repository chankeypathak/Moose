package Moose::Exception::RoleNameRequired;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception';

sub _build_message {
    "You must supply a role name to look for";
}

1;
