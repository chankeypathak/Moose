package Moose::Exception::BuilderMustBeAMethodName;

use Moose;
with 'Moose::Exception::Role::ParamsHash', 'Moose::Exception';

has 'class' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    "builder must be a defined scalar value which is a method name";
}

1;
