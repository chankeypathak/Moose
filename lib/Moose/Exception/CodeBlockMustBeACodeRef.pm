package Moose::Exception::CodeBlockMustBeACodeRef;

use Moose;
with 'Moose::Exception::Role::ParamsHash', 'Moose::Exception::Role::Instance', 'Moose::Exception';

sub _build_message {
    "Your code block must be a CODE reference";
}

1;
