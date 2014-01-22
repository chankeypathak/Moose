package Moose::Exception::CanReblessOnlyIntoASuperclass;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception::Role::Instance', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "You may rebless only into a superclass of (".blessed( $self->instance )."), of which (". $self->class->name .") isn't."
}

1;
