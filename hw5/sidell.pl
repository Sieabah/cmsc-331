#!/usr/bin/perl
use strict;
use warnings;

my %hash;

sub hashValueDescendingNum {
   $hash{$b} <=> $hash{$a};
}

for(glob("*.txt"))
{
	open my $info, $_ or die "Can't open ".$_.": $!";
	while(my $line = <$info>)
	{
		if($. == 1)
		{
			print $line;
		}
		else
		{
			for(split(" ", $line))
			{
				$_ =~ s/[[:punct:]]//g;
				if($hash{lc($_)})
				{
					$hash{lc($_)}++
				}
				else
				{
					$hash{lc($_)} = 1;
				}
			}
		}
	}

	close $info;
}

print "\n";

print "Forsooth frequency: ".$hash{'forsooth'}."\n";

my $key;
my $itr = 0;
foreach $key (sort hashValueDescendingNum (keys(%hash))) {
	if($itr++ < 10)
	{
		print "#$itr $key: $hash{$key}\n";
	}
	else
	{
		last;	
	}
}

