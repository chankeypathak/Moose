package Moose::Exception::CreateTakesArrayRefOfRoles;

use Moose;
with 'Moose::Exception::Role::RoleForCreate', 'Moose::Exception';

sub _build_message {
    "You must pass an ARRAY ref of roles";
}

1;

