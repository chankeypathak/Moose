package Moose::Exception::NoImmutableTraitSpecifiedForClass;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception::Role::ParamsHash', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "no immutable trait specified for ".$self->class;
}

1;
