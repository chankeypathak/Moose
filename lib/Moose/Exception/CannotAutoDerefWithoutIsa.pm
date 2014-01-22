package Moose::Exception::CannotAutoDerefWithoutIsa;

use Moose;
with 'Moose::Exception::Role::InvalidAttributeOptions', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "You cannot auto-dereference without specifying a type constraint on attribute (".$self->attribute_name.")";
}

1;
