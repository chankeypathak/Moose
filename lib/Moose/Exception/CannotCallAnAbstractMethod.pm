package Moose::Exception::CannotCallAnAbstractMethod;

use Moose;
with 'Moose::Exception';

sub _build_message {
    "Abstract method";
}

1;
