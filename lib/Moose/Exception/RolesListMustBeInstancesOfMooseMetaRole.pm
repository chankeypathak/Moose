package Moose::Exception::RolesListMustBeInstancesOfMooseMetaRole;

use Moose;
with 'Moose::Exception::Role::ParamsHash', 'Moose::Exception';

has 'class' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

has 'role' => (
    is       => 'ro',
    isa      => 'Any',
    required => 1
);

sub _build_message {
    my $self = shift;
    "The list of roles must be instances of Moose::Meta::Role, not ".$self->role;
}

1;
