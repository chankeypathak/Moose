package Moose::Exception::AddRoleTakesAMooseMetaRoleInstance;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception';

has 'role_to_be_added' => (
    is       => 'ro',
    isa      => 'Any',
    required => 1,
);

sub _build_message {
    "Roles must be instances of Moose::Meta::Role";
}

1;
