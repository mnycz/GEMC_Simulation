use strict;
use warnings;

our %configuration;
#my %configuration = load_configuration("dipoleZ.dat");



#sub makeDipoleGeometry
#{
#    makeBox1();
#    makeDipoleMag();
#}


#my $zpos     = -25.0; # cm 
sub makeCollimator
{

        #my $zpos     = -29.0; # cm
        my $zpos     = -24.0; # cm  
        my %detector = init_det();
	$detector{"name"}        = "collimator";
	$detector{"mother"}      = "root";
	$detector{"pos"}         = "0*cm 0.0*cm $zpos*cm";
	$detector{"color"}       = "33bb99";
	$detector{"type"}        = "Tube";
	$detector{"dimensions"}    = "0.*cm 1.*cm 5.*mm 0*deg 360*deg"; #inner_radius, outer_radius, half-length, starting_angle, total angle 	
	$detector{"material"}    = "G4_W";
	$detector{"visible"}     = 1;
	$detector{"style"}       = 1;
	print_det(\%configuration, \%detector);


}
      



