rotate([0,-90,0])
{
$fn=180;

difference(){
union(){
translate([2,41,0])
minkowski()
{
 cube([32,15,.5]);
 cylinder(r=2,h=.5);
}
translate([0,10,0])cube([32.5,32,1]);
}
translate([15,-1,-1])cube([25,22.5,3]);
translate([32.5,21.5,-1])cylinder(d=35,h=3);
}

translate([0,0,54])
difference(){
union(){
translate([2,41,0])
minkowski()
{
 cube([32,15,.5]);
 cylinder(r=2,h=.5);
}
translate([0,10,0])cube([32.5,32,1]);
}
translate([15,-1,-1])cube([25,22.5,3]);
translate([32.5,21.5,-1])cylinder(d=35,h=3);
}

translate([0,0,55])
rotate([0,180,0])
translate([-35,90,0])
difference(){
cylinder(r=50,h=55);
translate([0,0,-1])cylinder(r=49,h=57);
translate([-100,0,0])cube([200,200,200],center=true);
translate([135,0,0])cube([200,200,200],center=true);
translate([0,100,0])cube([200,200,200],center=true);    
}

translate([0,10,0])
difference(){
cube([15,1,55]);
//translate([7.5,-1,5])rotate([-90,0,0])
//    cylinder(d=3.5,h=4);
//translate([7.5,-1,50])rotate([-90,0,0])
//    cylinder(d=3.5,h=4);
translate([-1,-1,12.5])cube([30,30,30]);
}
}
