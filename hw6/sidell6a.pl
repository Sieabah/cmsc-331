#!/usr/bin/perl -w

use strict;
use LWP::Simple;

my $html = get("$ARGV[0]") or die "Unable to download url";

while($html =~ m/(<a [^>]*?href=["|']([^'"]*?)["|'][^>]*?>)/g)
	{ print "$2\n"; }