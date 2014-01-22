package Moose::Exception::NoDestructorClassSpecified;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception::Role::ParamsHash', 'Moose::Exception';

sub _build_message {
    "The 'inline_destructor' option is present, but no destructor class was specified";
}

1;
