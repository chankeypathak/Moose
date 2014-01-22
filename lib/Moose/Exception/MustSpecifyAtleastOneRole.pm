package Moose::Exception::MustSpecifyAtleastOneRole;

use Moose;
with 'Moose::Exception::Role::Role', 'Moose::Exception';

sub _build_message {
    "Must specify at least one role";
}

1;
