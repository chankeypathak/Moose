package Moose::Exception::ConflictDetectedInCheckRoleExclusions;

use Moose;
with 'Moose::Exception::Role::Role', 'Moose::Exception';

has 'excluded_role' => (
    is       => 'ro',
    isa      => 'Moose::Meta::Role',
    required => 1
);

sub _build_message {
    my $self = shift;
    "Conflict detected: " . $self->role->name . " excludes role '" . $self->excluded_role->name . "'";
}

1;
