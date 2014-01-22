package Moose::Exception::NeitherTypeNorTypeNameIsGiven;

use Moose;
with 'Moose::Exception';

sub _build_message {
    "You need to give type or type_name or both";
}

1;
