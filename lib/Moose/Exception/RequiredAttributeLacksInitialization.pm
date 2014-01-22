package Moose::Exception::RequiredAttributeLacksInitialization;

use Moose;
with 'Moose::Exception::Role::ParamsHash', 'Moose::Exception';

has 'class' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    "A required attribute must have either 'init_arg', 'builder', or 'default'";
}

1;
