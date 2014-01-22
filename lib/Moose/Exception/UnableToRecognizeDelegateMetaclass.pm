package Moose::Exception::UnableToRecognizeDelegateMetaclass;

use Moose;
with 'Moose::Exception::Role::Attribute', 'Moose::Exception';

has 'delegate_metaclass' => (
    is       => 'ro',
    isa      => 'Any',
    required => 1
);

sub _build_message {
    my $self = shift;
    my $meta = $self->delegate_metaclass;

    return "Unable to recognize the delegate metaclass '$meta'";
}

1;
