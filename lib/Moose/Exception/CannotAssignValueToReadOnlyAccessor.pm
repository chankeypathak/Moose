package Moose::Exception::CannotAssignValueToReadOnlyAccessor;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception::Role::EitherAttributeOrAttributeName', 'Moose::Exception';

has 'value' => (
    is       => 'ro',
    isa      => 'Any',
    required => 1
);

sub _build_message {
    my $self = shift;
    "Cannot assign a value to a read-only accessor";
}

1;
