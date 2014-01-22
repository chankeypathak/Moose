package Moose::Exception::WrongTypeConstraintGiven;

use Moose;
with 'Moose::Exception::Role::ParamsHash', 'Moose::Exception';

has [qw/required_type given_type attribute_name/] => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    my $self = shift;
    "The type constraint for ".$self->attribute_name." must be a subtype of "
    .$self->required_type." but it's a ".$self->given_type;
}

1;
