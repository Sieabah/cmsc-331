#!/usr/bin/perl -w

use strict;
use LWP::Simple;
use Compress::Zlib;

my $html = get("$ARGV[0]") or die "Unable to download url";
my $html2 = get("$ARGV[1]") or die "Unable to download url";

my $one = length compress($html);
my $two = length compress($html2);

my $val = ((length compress($html.$html2))
	- ($one, $two)[$one < $two])/($one, $two)[$one > $two];

print "NCD of $ARGV[0] and $ARGV[1] is $val \n";
