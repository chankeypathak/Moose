package Moose::Exception::UnionCalledWithAnArrayRefAndAdditionalArgs;

use Moose;

has 'array' => (
    is       => 'ro',
    isa      => 'ArrayRef',
    required => 1
);

has 'args' => (
    is       => 'ro',
    isa      => 'ArrayRef',
    required => 1
);

sub _build_message {
    "union called with an array reference and additional arguments", 'Moose::Exception';
}

1;
