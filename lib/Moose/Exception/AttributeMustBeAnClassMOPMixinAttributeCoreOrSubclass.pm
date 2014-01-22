package Moose::Exception::AttributeMustBeAnClassMOPMixinAttributeCoreOrSubclass;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception';

has 'attribute' => (
    is       => 'ro',
    isa      => 'Any',
    required => 1
);

sub _build_message {
    "Your attribute must be an instance of Class::MOP::Mixin::AttributeCore (or a subclass)";
}

1;
