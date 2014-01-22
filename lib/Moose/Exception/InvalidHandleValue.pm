package Moose::Exception::InvalidHandleValue;

use Moose;
with 'Moose::Exception::Role::Instance', 'Moose::Exception';

has 'handle_value' => (
    is       => 'ro',
    isa      => 'Any',
    required => 1
);

sub _build_message {
    my $self = shift;
    "All values passed to handles must be strings or ARRAY references, not ".$self->handle_value;
}

1;
