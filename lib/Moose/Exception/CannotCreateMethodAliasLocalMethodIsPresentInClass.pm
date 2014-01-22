package Moose::Exception::CannotCreateMethodAliasLocalMethodIsPresentInClass;

use Moose;
with 'Moose::Exception::Role::Role', 'Moose::Exception::Role::Method', 'Moose::Exception::Role::Class', 'Moose::Exception';

has 'aliased_method_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    "Cannot create a method alias if a local method of the same name exists";
}

1;
