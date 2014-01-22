package Moose::Exception::MustSupplyAMetaclass;

use Moose;
with 'Moose::Exception::Role::ParamsHash', 'Moose::Exception';

has 'class' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    my $self = shift;
    "You must pass a metaclass instance if you want to inline";
}

1;
