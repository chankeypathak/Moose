package Moose::Exception::DelegationToATypeWhichIsNotAClass;

use Moose;
with 'Moose::Exception::Role::Attribute', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "The ".$self->attribute->name." attribute is trying to delegate to a type (".$self->attribute->type_constraint->name.") that is not backed by a class";
}

1;
