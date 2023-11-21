$fn=60;

difference(){
union(){
difference(){
cylinder(d=40,h=10,$fn=60);
scale([1,1,0.5])
rotate_extrude(angle=360,convexity=2,$fn=60)
translate([24,20.5,0])circle(d=40,$fn=60);
}

intersection(){
for(i=[0:36:330]){
rotate([0,0,i])
translate([12,0,0])
rotate([15,0,0])
difference(){
translate([0,0,-10])cylinder(d=25,h=30);
translate([0,0,-10])cylinder(d=23.4,h=25);
translate([-15,0,-3])cube([30,30,30]);
}
}
cylinder(d=40,h=10);
}
}
translate([0,0,5])cylinder(d=10,h=20);
translate([0,0,-1])cylinder(d=1.2,h=20);
}
