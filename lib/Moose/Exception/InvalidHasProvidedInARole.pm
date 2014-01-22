package Moose::Exception::InvalidHasProvidedInARole;

use Moose;
with 'Moose::Exception::Role::Role', 'Moose::Exception';

has 'attribute_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

sub _build_message {
    "Usage: has 'name' => ( key => value, ... )";
}

1;
