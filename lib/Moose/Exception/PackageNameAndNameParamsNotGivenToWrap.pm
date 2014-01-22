package Moose::Exception::PackageNameAndNameParamsNotGivenToWrap;

use Moose;
with 'Moose::Exception::Role::ParamsHash', 'Moose::Exception';

has 'code' => (
    is       => 'ro',
    isa      => 'CodeRef',
    required => 1
);

has 'class' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    "You must supply the package_name and name parameters";
}

1;
