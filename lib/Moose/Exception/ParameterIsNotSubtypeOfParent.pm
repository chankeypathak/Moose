package Moose::Exception::ParameterIsNotSubtypeOfParent;

use Moose;
with 'Moose::Exception::Role::TypeConstraint', 'Moose::Exception';

has 'type_parameter' => (
    is => 'ro',
    isa => 'Str',
    required => 1
);

sub _build_message {
    my $self = shift;
    my $type_parameter = $self->type_parameter;
    my $parent = $self->type->parent->type_parameter;

    return "$type_parameter is not a subtype of $parent";
}

1;
