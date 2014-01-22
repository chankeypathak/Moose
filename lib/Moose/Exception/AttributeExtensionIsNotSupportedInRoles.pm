package Moose::Exception::AttributeExtensionIsNotSupportedInRoles;

use Moose;
with 'Moose::Exception::Role::Role', 'Moose::Exception';

has 'attribute_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

sub _build_message {
    "has '+attr' is not supported in roles";
}

1;
