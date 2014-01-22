package Moose::Exception::CouldNotCreateWriter;

use Moose;
with 'Moose::Exception::Role::EitherAttributeOrAttributeName', 'Moose::Exception::Role::Instance', 'Moose::Exception';

has 'error' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    my $self = shift;
    my $error = $self->error;
    my $attribute_name = $self->attribute_name;

    return "Could not create writer for '$attribute_name' "
        . "because $error";
}

1;
