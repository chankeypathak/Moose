package Moose::Exception::CannotFindType;

use Moose;
with 'Moose::Exception';

has 'type_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    my $self = shift;
    "Cannot find type '".$self->type_name."', perhaps you forgot to load it";
}

1;
