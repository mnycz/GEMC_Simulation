#!/usr/bin/perl -w


use strict;
use lib ("$ENV{GEMC}/api/perl");
#use lib ("PERL5LIB");
use utils;
use parameters;
use materials;
use geometry;
use math;

use Math::Trig;

# Help Message
sub help()
{
	print "\n Usage: \n";
	print "   dipole.pl <configuration filename>\n";
 	print "   Will create dipole\n";
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


# sensitive geometry
require "./geometry.pl";
# material
#require "./materials.pl";

# all the scripts must be run for every configuration
my @allConfs = ("original");


foreach my $conf ( @allConfs )
{
	$configuration{"variation"} = $conf ;
	
	# geometry
	#makeDipoleGeometry();
	makeBox1();
	#makeDipoleMag();
	
}


