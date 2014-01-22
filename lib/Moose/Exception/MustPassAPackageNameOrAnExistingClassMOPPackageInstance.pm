package Moose::Exception::MustPassAPackageNameOrAnExistingClassMOPPackageInstance;

use Moose;
with 'Moose::Exception::Role::ParamsHash', 'Moose::Exception';

has 'class' => (
    is       => 'ro',
    isa      => 'Any',
    required => 1
);

sub _build_message {
    "You must pass a package name or an existing Class::MOP::Package instance";
}

1;
