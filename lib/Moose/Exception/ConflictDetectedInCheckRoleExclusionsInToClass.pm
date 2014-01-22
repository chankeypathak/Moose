package Moose::Exception::ConflictDetectedInCheckRoleExclusionsInToClass;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception::Role::Role', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "Conflict detected: " . $self->class->name . " excludes role '" . $self->role->name . "'";
}

1;
