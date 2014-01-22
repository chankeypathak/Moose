package Moose::Exception::MustSupplyAMooseMetaAttributeInstance;

use Moose;
with 'Moose::Exception::Role::ParamsHash', 'Moose::Exception';

has 'class' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    "You must supply an attribute which is a 'Moose::Meta::Attribute' instance";
}

1;
