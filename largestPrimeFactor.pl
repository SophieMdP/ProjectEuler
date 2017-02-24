#!/usr/bin/perl
use strict;
use warnings;


# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

my $number = 600851475143;
#my $number = 13195;
NUMBER: for (my $i=$number;$i>1;$i--){
	if($number % $i == 0) {
		# Is $i a prime number?
		for(my $j=2;$j<$i;$j++){
			if($i % $j == 0){
				next NUMBER;
			}
		}
		print("$i is the largest prime factor of $number\n"); # 
		last NUMBER;
	}
}