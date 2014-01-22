package Moose::Exception::RequiredAttributeNeedsADefault;

use Moose;
with 'Moose::Exception::Role::InvalidAttributeOptions', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "You cannot have a required attribute (".$self->attribute_name.") without a default, builder, or an init_arg";
}

1;
