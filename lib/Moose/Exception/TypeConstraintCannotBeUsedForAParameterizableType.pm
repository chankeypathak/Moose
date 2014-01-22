package Moose::Exception::TypeConstraintCannotBeUsedForAParameterizableType;

use Moose;
with 'Moose::Exception::Role::TypeConstraint', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "The " . $self->type_name . " constraint cannot be used, because "
    . $self->type->parent->name . " doesn't subtype or coerce from a parameterizable type."
}

1;
