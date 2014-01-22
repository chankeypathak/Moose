package Moose::Exception::CouldNotFindTypeConstraintToCoerceFrom;

use Moose;
with 'Moose::Exception::Role::Instance', 'Moose::Exception';

has 'constraint_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    my $self = shift;
    "Could not find the type constraint (".$self->constraint_name.") to coerce from";
}

1;
