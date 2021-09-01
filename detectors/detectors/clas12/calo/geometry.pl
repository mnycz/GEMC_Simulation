use strict;
use warnings;

our %configuration;


sub makeCalo
{

	my $minAngle = 0.3;   # degrees
	my $maxAngle = 5;  # degrees
	my $zpos     = 30; # cm
	my $thick    = 0.1;   # cm

	#my $IR = $zpos*tan(rad($minAngle));
	#my $OR = $zpos*tan(rad($maxAngle));

	my %detector = init_det();
	$detector{"name"}        = "clasFlux";
	$detector{"mother"}      = "root";
	#$detector{"mother"}      = "radiator"; 
	$detector{"description"} = "Flux detector at z=1m";
	#$detector{"pos"}         = "0*cm 0*cm $zpos*cm";
	$detector{"pos"}         = "0*cm -10*cm -20*cm";
	#$detector{"color"}       = " 33bb99";
	$detector{"color"}       = "0147FA";
	#$detector{"type"}        = "Tube";
	$detector{"type"}         = "Box";
	#$detector{"dimensions"}  = "$IR*cm $OR*cm $thick*cm 0*deg 360*deg";
	$detector{"dimensions"}  = "5*cm 5*cm 5*cm";
	$detector{"material"}    = "G4_Pb";
	#$detector{"material"}   ="G4_Cu";
	#$detector{"material"}    = "scintillator";
	$detector{"visible"}     = 1;
	$detector{"style"}       = 1;
	#$detector{"sensitivity"} = "flux";
	$detector{"sensitivity"} = "rtpc";
	$detector{"hit_type"}    = "rtpc";
	#$detector{"hit_type"}    = "ctof";
	#$detector{"identifiers"} = "sector manual 1";
	#$detector{"identifiers"} = "sector manual";
	print_det(\%configuration, \%detector);
}

