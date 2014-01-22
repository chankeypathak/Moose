package Moose::Exception::MustSpecifyAtleastOneMethod;

use Moose;
with 'Moose::Exception::Role::Role', 'Moose::Exception';

sub _build_message {
    "Must specify at least one method";
}

1;
