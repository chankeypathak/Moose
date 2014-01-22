package Moose::Exception::PackagesAndModulesAreNotCachable;

use Moose;
with 'Moose::Exception::Role::Class', 'Moose::Exception::Role::ParamsHash', 'Moose::Exception';

has 'is_module' => (
    is       => 'ro',
    isa      => 'Bool',
    required => 1
);

sub _build_message {
    my $self = shift;
    my $is_module = $self->is_module;

    if( $is_module ) {
        return "Modules are not cacheable";
    } else {
        return "Packages are not cacheable";
    }
}

1;
