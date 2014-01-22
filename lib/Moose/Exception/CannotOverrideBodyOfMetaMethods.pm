package Moose::Exception::CannotOverrideBodyOfMetaMethods;

use Moose;
with 'Moose::Exception::Role::ParamsHash', 'Moose::Exception';

has 'class' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    "Overriding the body of meta methods is not allowed";
}

1;
