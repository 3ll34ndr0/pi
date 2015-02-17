#!/usr/bin/perl 

#### Import Classes
use File::Copy;
use FileHandle;
####
#### Define constants
my $idPort = "id";
#my $file = "netlist.vhd";# input file netlist in vhdl
##

#foreach (@ARGV) {
#  open(fhi,'<',"$ARGV[0]") or die "phile not found";
my $file =$ARGV[0];
print "$file\n";

#		}
#
#
#my @ins, @outs;
my %ports; # to store ports (ins & outs) and wire's name given by the VhdlNew.hs

### OPEN INPUT FILE 
print "$file\n";
open(my $fhi, '<',$file) or die "aarchivo no encontrado";
open(my $fho, '+>',"temp-$file");
while(<$fhi>){
#I get the inputs
#if(m/([a-z]+_[a-z]*_*[0-9]+).+in/) {push @ins,$1;}
#if(m/.+$idPort.+([a-z]+_[0-9]+).+(w[0-9]+)/)
if(m/.+$idPort.+port.map.+\((([A-Za-z0-9_]+)\[(\d+)\]).+(w[0-9]+)/)
#if(m/.+$idPort.+port.map.+\(([A-Za-z0-9_]+\[\d+\]).+(w[0-9]+)/)
	{
	push @wires,"$4"; #Guardo la llave de ports
	push @wires,"$2$3"; #guardo el valor de ports
	$ports {$4} = "$2$3"; #La llave es cable que descarto y el valor es el cable que tengo que usar luego
	print "$4 $2$3\n";
	#print $fho "--$_"; # comento la linea
	} 

#Now I get the outputs, for example:
# c_sum_0   :  std_wire  port map (w1, sum_0);
# or like this:
# c_cout    :  std_wire  port map (w131, cout);

#if(m/.+$idPort.+(w[0-9]+)\,.?([a-z]+_*[a-z]*_*[0-9]*)\).*/)                          
if(m/.+$idPort.+(w[0-9]+)\,.?([A-Za-z0-9_]+)\).*/)                          



{
$ports {$1} = $2;
print $fho "--$_"; # comento la linea
} else {
print $fho "$_";}
# and the outputs
#if(m/([a-z]+_[a-z]*_*[0-9]+).+out/) {push @outs,$1;}
# I could use ins and outs to make the %ports hash table
		}#while
close($fhi);
close($fho);


#copy("temp-$file", "temp2-$file");
# Replace all signals connected to wire with the inputs 
#   c_w131    :  std_or2   port map (w132, w141, w131);
# w131 should be replaced by the output


while(my($key,$value) = each(%ports)) {
	print " clave: $key - valor $value\n";
	open(my $fhi, '<',"temp-$file") or die "archivo no encontrado";
	open(my $fho, '+>', "stripped-$file");
	while(<$fhi>){
		if(s/(.+map.+)$key(\,|\))/$1$key$2/g) {

#need to delete entries with the next pattern:  c_w18     :  std_wire  port map ...
			if(m/.+$idPort.+/) {print $fho "-- deleted $_";}
			else {print $fho "$_";}}
		else { print $fho "$_";}
		      }# while file 

	close($fho);
	close($fhi); #atenti no hacer close($fho, $fhi) porque no es lo mismo que en 2 renglones
	copy("stripped-$file","temp-$file");
					}#while hash table

