#!/usr/bin/perl -w

use strict;
use lib ("$ENV{GEMC}/api/perl");
#use lib ("PERL5LIB");
use utils;
use parameters;
#use materials;
use bank;
use geometry;
use hit;
use math;

use Math::Trig;

# Help Message
sub help()
{
	print "\n Usage: \n";
	print "   calo.pl <configuration filename>\n";
 	print "   Will create a Calo Detector  geometry\n";
	exit;
}

# Make sure the argument list is correct
if( scalar @ARGV != 1)
{
	help();
	exit;
}

# Loading configuration file and paramters
our %configuration = load_configuration($ARGV[0]);


#sensitive geometry
require "./geometry.pl";

#material
#require "./materials.pl";

#hit                     
require "./hit.pl";
#define_hit();
#bank
require "./bank.pl";
#define_bank();
#hit
#require "./hit.pl";

# sensitive geometry
#require "./geometry.pl";

# all the scripts must be run for every configuration
my @allConfs = ("original");

define_bank();
foreach my $conf ( @allConfs )
{
       
	$configuration{"variation"} = $conf ;
	define_hit();
	# geometry
	makeCalo();
	
}


