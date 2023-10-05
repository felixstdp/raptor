$fn=120;

%translate([0,0,5])sphere(d=10);
 
 // soporte bola
 
difference(){
union(){
cylinder(d=14,h=7);
translate([0,0,7])cylinder(r1=7, r2=6, h=1);
hull(){ 
translate([-6.5,0,0])cylinder(d=6,h=1.5);
translate([6.5,0,0])cylinder(d=6,h=1.5);
}
}
translate([0,0,5])cylinder(d=9.5,h=25);
translate([0,0,5])sphere(d=10.5);
translate([0,0,10.5])cube(size=[15,3,16],center=true);
translate([-6.5,0,-1])cylinder(d=2.2,h=10);
translate([6.5,0,-1])cylinder(d=2.2,h=10);
translate([-6.5,0,1.5])cylinder(d=4,h=10);
translate([6.5,0,1.5])cylinder(d=4,h=10);
}
