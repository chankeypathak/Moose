package Moose::Exception::BuilderDoesNotExist;

use Moose;
with 'Moose::Exception::Role::Attribute', 'Moose::Exception::Role::Instance', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    blessed($self->instance)." does not support builder method '".$self->attribute->builder."' for attribute '".$self->attribute->name."'";
}

1;
