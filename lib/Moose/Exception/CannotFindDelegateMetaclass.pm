package Moose::Exception::CannotFindDelegateMetaclass;

use Moose;
with 'Moose::Exception::Role::Attribute', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "Cannot find delegate metaclass for attribute ".$self->attribute->name;
}

1;
