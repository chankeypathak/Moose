package Moose::Exception::CannotUseLazyBuildAndDefaultSimultaneously;

use Moose;
with 'Moose::Exception::Role::InvalidAttributeOptions', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "You can not use lazy_build and default for the same attribute (".$self->attribute_name.")";
}

1;
