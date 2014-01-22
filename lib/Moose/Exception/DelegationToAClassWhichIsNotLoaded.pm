package Moose::Exception::DelegationToAClassWhichIsNotLoaded;

use Moose;
with 'Moose::Exception::Role::Attribute', 'Moose::Exception';

has 'class_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

sub _build_message {
    my $self = shift;
    "The ".$self->attribute->name." attribute is trying to delegate to a class which has not been loaded - ".$self->class_name;
}

1;
