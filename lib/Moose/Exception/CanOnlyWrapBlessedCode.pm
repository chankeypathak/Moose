package Moose::Exception::CanOnlyWrapBlessedCode;

use Moose;
with 'Moose::Exception::Role::ParamsHash', 'Moose::Exception';

has 'class' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

has 'code' => (
    is       => 'ro',
    isa      => 'Any',
    required => 1
);

sub _build_message {
    "Can only wrap blessed CODE";
}

1;
