package Moose::Exception::AddParameterizableTypeTakesParameterizableType;

use Moose;
with 'Moose::Exception';

has 'type_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    my $self = shift;
    "Type must be a Moose::Meta::TypeConstraint::Parameterizable not ".$self->type_name;
}

1;
