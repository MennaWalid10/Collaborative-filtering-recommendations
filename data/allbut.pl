#!/usr/local/bin/perl


if (@ARGV < 3) {
	print STDERR "Usage: $0 base_name start stop max_test [ratings ...]\n";
	exit 1;
}
$basename = shift;
$start = shift;
$stop = shift;
$maxtest = shift;


open( TESTFILE, ">$basename.test" ) or die "Cannot open $basename.test for writing\n";
open( BASEFILE, ">$basename.base" ) or die "Cannot open $basename.base for writing\n";


$testcnt = 0;

while (<>) {
	($user) = split;
	if (! defined $ratingcnt{$user}) {
		$ratingcnt{$user} = 0;
	}
	++$ratingcnt{$user};
	if (($testcnt < $maxtest || $maxtest <= 0)
	&& $ratingcnt{$user} >= $start && $ratingcnt{$user} <= $stop) {
		++$testcnt;
		print TESTFILE;
	}
	else {
		print BASEFILE;
	}
}
