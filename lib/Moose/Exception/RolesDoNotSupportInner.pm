package Moose::Exception::RolesDoNotSupportInner;

use Moose;
with 'Moose::Exception';

sub _build_message {
    "Roles cannot support 'inner'";
}

1;
