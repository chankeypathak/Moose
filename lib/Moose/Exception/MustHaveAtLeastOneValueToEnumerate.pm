package Moose::Exception::MustHaveAtLeastOneValueToEnumerate;

use Moose;
with 'Moose::Exception::Role::ParamsHash', 'Moose::Exception';

has 'class' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    "You must have at least one value to enumerate through";
}

1;
