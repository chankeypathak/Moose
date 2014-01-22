package Moose::Exception::RolesInCreateTakesAnArrayRef;

use Moose;
with 'Moose::Exception::Role::ParamsHash', 'Moose::Exception';

sub _build_message {
    my $self = shift;
    "You must pass an ARRAY ref of roles";
}

1;
