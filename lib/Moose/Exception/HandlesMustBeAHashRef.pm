package Moose::Exception::HandlesMustBeAHashRef;

use Moose;
with 'Moose::Exception::Role::Instance', 'Moose::Exception';

has 'given_handles' => (
    is       => 'ro',
    isa      => 'Any',
    required => 1
);

sub _build_message {
    my $self = shift;
    "The 'handles' option must be a HASH reference, not ".$self->given_handles;
}

1;
