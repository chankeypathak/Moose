package Moose::Exception::InvalidRoleApplication;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception';

has 'application' => (
    is       => 'ro',
    isa      => "Any",
    required => 1,
);

sub _build_message {
    "Role applications must be instances of Moose::Meta::Role::Application::ToClass";
}

1;
