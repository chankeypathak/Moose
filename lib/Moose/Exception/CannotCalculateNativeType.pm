package Moose::Exception::CannotCalculateNativeType;

use Moose;
with 'Moose::Exception::Role::Instance', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "Cannot calculate native type for " . ref $self->instance;
}

1;
