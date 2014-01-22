package Moose::Exception::ConstructClassInstanceTakesPackageName;

use Moose;
with 'Moose::Exception';

sub _build_message {
    "You must pass a package name";
}

1;
