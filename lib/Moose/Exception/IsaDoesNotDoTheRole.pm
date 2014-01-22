package Moose::Exception::IsaDoesNotDoTheRole;

use Moose;
with 'Moose::Exception::Role::InvalidAttributeOptions', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "Cannot have an isa option and a does option if the isa does not do the does on attribute (".$self->attribute_name.")";
}

1;
