package Moose::Exception::CannotApplyBaseClassRolesToRole;

use Moose;
with 'Moose::Exception::Role::ParamsHash', 'Moose::Exception::Role::Role', 'Moose::Exception';

sub _build_message {
    "You can only apply base class roles to a Moose class, not a role.";
}

1;
