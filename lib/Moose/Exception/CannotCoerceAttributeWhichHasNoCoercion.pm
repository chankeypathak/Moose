package Moose::Exception::CannotCoerceAttributeWhichHasNoCoercion;

use Moose;
with 'Moose::Exception::Role::InvalidAttributeOptions', 'Moose::Exception::Role::TypeConstraint', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    my $name = $self->attribute_name;
    my $type = $self->type_name;

    return "You cannot coerce an attribute ($name) unless its type ($type) has a coercion";
}

1;
