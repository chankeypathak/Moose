package Moose::Exception::ClassDoesNotHaveInitMeta;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception';

has 'traits' => (
    is       => 'ro',
    isa      => 'ArrayRef',
    required => 1
);

sub _build_message {
    my $self = shift;
    my $class = $self->class_name;

    return "Cannot provide traits when $class does not have an init_meta() method";
}

1;
