package Moose::Exception::CoercionAlreadyExists;

use Moose;
with 'Moose::Exception::Role::Instance', 'Moose::Exception';

has 'constraint_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    my $self = shift;
    "A coercion action already exists for '".$self->constraint_name."'";
}

1;
