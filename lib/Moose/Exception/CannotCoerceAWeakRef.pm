package Moose::Exception::CannotCoerceAWeakRef;

use Moose;
with 'Moose::Exception::Role::InvalidAttributeOptions', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "You cannot have a weak reference to a coerced value on attribute (".$self->attribute_name.")";
}

1;
