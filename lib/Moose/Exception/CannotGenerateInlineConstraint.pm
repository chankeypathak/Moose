package Moose::Exception::CannotGenerateInlineConstraint;

use Moose;
with 'Moose::Exception::Role::TypeConstraint', 'Moose::Exception';

has 'parameterizable_type_object' => (
    is       => 'ro',
    isa      => 'Moose::Meta::TypeConstraint::Parameterizable',
    required => 1
);

has 'value' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    my $self = shift;
    my $type = $self->type;

    return "Can't generate an inline constraint for $type, since none was defined";
}

1;
