package Moose::Exception::CannotCreateMethodAliasLocalMethodIsPresent;

use Moose;
with 'Moose::Exception::Role::Role', 'Moose::Exception::Role::Method', 'Moose::Exception';

has 'role_being_applied' => (
    is       => 'ro',
    isa      => 'Moose::Meta::Role',
    required => 1
);

has 'aliased_method_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    "Cannot create a method alias if a local method of the same name exists";
}

1;
