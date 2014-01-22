package Moose::Exception::MetaclassIsNotASubclassOfGivenMetaclass;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception';

has 'metaclass' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    my $self = shift;
    $self->class_name." already has a metaclass, but it does not inherit ".$self->metaclass.' ('.$self->class.').';
}

1;
