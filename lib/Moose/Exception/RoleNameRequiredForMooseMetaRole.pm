package Moose::Exception::RoleNameRequiredForMooseMetaRole;

use Moose;
with 'Moose::Exception::Role::Role', 'Moose::Exception';

sub _build_message {
    "You must supply a role name to look for";
}

1;
