package Moose::Exception::CannotInlineTypeConstraintCheck;

use Moose;
with 'Moose::Exception::Role::TypeConstraint', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    'Cannot inline a type constraint check for ' . $self->type_name;
}

1;
