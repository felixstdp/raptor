$fn=60;

difference(){
cylinder(d=40,h=10,$fn=60);
scale([1,1,0.5])
rotate_extrude(angle=360,convexity=2,$fn=60)
translate([23,20.5,0])circle(d=40,$fn=60);
}

intersection(){
for(i=[0:36:330]){
rotate([0,0,i])
translate([12,0,0])
difference(){
cylinder(d=25,h=10);
translate([0,0,-1])cylinder(d=23.4,h=12);
translate([-15,0,0])cube([30,30,30]);
}
}
cylinder(d=40,h=10);
}
