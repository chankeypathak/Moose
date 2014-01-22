package Moose::Exception::CannotDelegateLocalMethodIsPresent;

use Moose;
with 'Moose::Exception::Role::Attribute', 'Moose::Exception::Role::Method', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "You cannot overwrite a locally defined method (".$self->method->name.") with a delegation";
}

1;
