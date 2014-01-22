package Moose::Exception::DelegationToARoleWhichIsNotLoaded;

use Moose;
with 'Moose::Exception::Role::Attribute', 'Moose::Exception';

has 'role_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

sub _build_message {
    my $self = shift;
    "The ".$self->attribute->name." attribute is trying to delegate to a role which has not been loaded - ".$self->role_name;
}

1;
