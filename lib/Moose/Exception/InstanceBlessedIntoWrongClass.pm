package Moose::Exception::InstanceBlessedIntoWrongClass;

use Moose;
with 'Moose::Exception::Role::ParamsHash', 'Moose::Exception::Role::Class', 'Moose::Exception::Role::Instance', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "Objects passed as the __INSTANCE__ parameter must already be blessed into the correct class, but ".$self->instance." is not a " . $self->class->name;
}

1;
