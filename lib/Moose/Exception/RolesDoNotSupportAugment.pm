package Moose::Exception::RolesDoNotSupportAugment;

use Moose;
with 'Moose::Exception';

sub _build_message {
    "Roles cannot support 'augment'";
}

1;
