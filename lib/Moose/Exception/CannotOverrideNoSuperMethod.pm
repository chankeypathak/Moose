package Moose::Exception::CannotOverrideNoSuperMethod;

use Moose;
with 'Moose::Exception::Role::ParamsHash', 'Moose::Exception';

has 'method_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

has 'class' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    my $self = shift;
    "You cannot override '".$self->method_name."' because it has no super method";
}

1;
