#!/usr/bin/env perl

use strict;
use warnings;

my $files = `ls`;

opendir my $dh, "." || die "can't opendir . : $!\n";
my $total_files = 0;
while( my $file = readdir $dh ) {
    if( !(-d $file) ) {
    	open my $fh, $file or die "Can't open $file : $!\n";
    	local $/ = undef;
    	my $string = <$fh>;
    	if( $string =~ m/with ['"\w:,\s]+;/g ) {
	    # print STDERR "In if\n";
    	    $string =~ s/with (['"\w:,\s]+);/with $1, 'Moose::Exception';/;
    	    $string =~ s/extends ["']Moose::Exception['"];\n//g;
    	} else {
    	    $string =~ s/extends ["']Moose::Exception["'];/with 'Moose::Exception', 'Moose::Exception';/;
    	}
	close $fh;
	open $fh, "> $file" or die "Can't open $file for writing : $!\n";
    	print $fh $string;
	$total_files++;
    }
}

print $total_files."\n";
