package Moose::Exception::IsaLacksDoesMethod;

use Moose;
with 'Moose::Exception::Role::InvalidAttributeOptions', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "Cannot have an isa option which cannot ->does() on attribute (".$self->attribute_name.")";
}

1;
