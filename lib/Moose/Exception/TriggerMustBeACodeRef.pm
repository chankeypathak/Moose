package Moose::Exception::TriggerMustBeACodeRef;

use Moose;
with 'Moose::Exception::Role::InvalidAttributeOptions', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "Trigger must be a CODE ref on attribute (".$self->attribute_name.")";
}

1;
