package Moose::Exception::MethodNameNotFoundInInheritanceHierarchy;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception';

has 'method_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    my $self = shift;
    "The method '".$self->method_name."' was not found in the inheritance hierarchy for ".$self->class->name;
}

1;
