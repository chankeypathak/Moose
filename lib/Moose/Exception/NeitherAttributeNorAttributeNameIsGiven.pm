package Moose::Exception::NeitherAttributeNorAttributeNameIsGiven;

use Moose;
with 'Moose::Exception';

sub _build_message {
    "You need to give attribute or attribute_name or both";
}

1;
