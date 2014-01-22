package Moose::Exception::CannotAutoDereferenceTypeConstraint;

use Moose;
with 'Moose::Exception::Role::Attribute', 'Moose::Exception::Role::Instance', 'Moose::Exception::Role::TypeConstraint', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "Can not auto de-reference the type constraint '" . $self->type_name . "'";
}

1;
