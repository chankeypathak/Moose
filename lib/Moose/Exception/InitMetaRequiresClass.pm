package Moose::Exception::InitMetaRequiresClass;

use Moose;
with 'Moose::Exception::Role::ParamsHash', 'Moose::Exception';

sub _build_message {
    "Cannot call init_meta without specifying a for_class";
}

1;
