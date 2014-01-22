package Moose::Exception::AccessorMustReadWrite;

use Moose;
with 'Moose::Exception::Role::InvalidAttributeOptions', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "Cannot define an accessor name on a read-only attribute, accessors are read/write";
}

1;
