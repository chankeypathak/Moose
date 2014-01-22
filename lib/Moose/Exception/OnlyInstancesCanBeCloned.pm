package Moose::Exception::OnlyInstancesCanBeCloned;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception::Role::ParamsHash', 'Moose::Exception';

has 'instance' => (
    is       => 'ro',
    isa      => 'Any',
    required => 1,
);

sub _build_message {
    my $self = shift;
    "You can only clone instances, (".$self->instance.") is not a blessed instance";
}

1;
