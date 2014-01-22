package Moose::Exception::NoAttributeFoundInSuperClass;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception::Role::InvalidAttributeOptions', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "Could not find an attribute by the name of '".$self->attribute_name."' to inherit from in ".$self->class->name;
}

1;
