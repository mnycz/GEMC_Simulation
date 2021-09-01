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

        #my $zpos     = -24.0; # cm  
        my %detector = init_det();
	$detector{"name"}        = "collimator";
	$detector{"mother"}      = "root";
	#$detector{"pos"}         = "0*cm 0.0*cm 0*cm";
	$detector{"type"}        = "Tube";
	$detector{"dimensions"}    = "0.*cm 4.*cm 1.*cm 0*deg 360*deg"; #inner_radius, outer_radius, half-length, starting_angle, total angle 	
	$detector{"material"}    = "Component";
	#$detector{"visible"}     = 0;
	#$detector{"style"}     = 0;
	print_det(\%configuration, \%detector);

	%detector = init_det();
	$detector{"name"}        = "cone1";
	$detector{"mother"}      = "root";
	#$detector{"pos"}         = "0*cm 0.0*cm 0*cm";
	#$detector{"material"}    = "G4_W";
	$detector{"type"}        = "Cons"; 
	$detector{"dimensions"}  =  "0*mm 2*mm 0*mm 4mm 1.05*cm 0.*deg 360.*deg";
	#$detector{"dimensions"}  =  "1*cm 2*cm 2*cm 3cm 1.1*cm 360.*deg 360.*deg";
	#$detector{"material"}    = "G4_W";
	$detector{"material"}    = "Component";
	#$detector{"visible"}     = 0;
	#$detector{"rotation"}    = "0*deg 0*deg 0*deg";
	#$detector{"dimensions"}  =  "20*cm 15*cm 5*cm 8*cm 6.5*cm 0.*deg 360.*deg";
	print_det(\%configuration, \%detector);


	%detector = init_det();
	$detector{"name"}        = "cone2";
	$detector{"mother"}      = "root";
	$detector{"pos"}         = "0*cm 0.0*cm 0*cm";
	$detector{"type"}        = "Operation: collimator - cone1";
	$detector{"color"}       = "aaff22";  
	$detector{"material"}    = "G4_W";
	#$detector{"material"}    = "Component";
	#$detector{"rotation"}    = "0*deg 180*deg 0*deg";
	$detector{"visible"}     = 1;
        $detector{"style"}       = 1;
	print_det(\%configuration, \%detector);
	

}
      



