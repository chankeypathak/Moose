package Moose::Exception::CloneObjectExpectsAnInstanceOfMetaclass;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception';

has 'instance' => (
    is       => 'ro',
    isa      => 'Any',
    required => 1,
);

sub _build_message {
    my $self = shift;
    "You must pass an instance of the metaclass (" .$self->class->name. "), not (".$self->instance.")";
}

1;
