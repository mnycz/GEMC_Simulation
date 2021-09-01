use strict;
#use lib ("PERL5LIB");
#use lib ("$ENV{GEMC}/io"); 
#use utils;
#use bank;
use warnings;
our %configuration;
#our %configuration = load_configuration($ARGV[0]);

sub define_hit
{
	# uploading the hit definition
	my %hit = init_hit();
	$hit{"name"}            = "calo";
	$hit{"description"}     = "calo hit definitions";
	$hit{"identifiers"}     = "sector module view strip";
	$hit{"signalThreshold"} = "0.1*MeV";
	$hit{"timeWindow"}      = "120*ns";
	$hit{"prodThreshold"}   = "5*mm";
	$hit{"maxStep"}         = "30*cm";
	$hit{"delay"}           = "1*ns";
	$hit{"riseTime"}        = "1*ns";
	$hit{"fallTime"}        = "2*ns";
	$hit{"mvToMeV"}         = 100;
	$hit{"pedestal"}        = -20;
	print_hit(\%configuration, \%hit);
}

