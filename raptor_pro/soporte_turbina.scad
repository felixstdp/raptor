difference(){
cylinder(d=38,h=1.2,$fn=120);
translate([0,0,-1])cylinder(d=28,h=3.5,$fn=120);
}

for(i=[0:90:270]){
rotate([0,0,i]){
translate([11.67,-3.0,0])redondear();
mirror([0,1,0])translate([11.67,-3.0,0])redondear();
}
}

difference(){
union(){
translate([-1,-15,0])cube([2,30,1.2]);
translate([-15,-1,0])cube([30,2,1.2]);
translate([-0.6,-27.7/2,0])cube([1.2,27.7,2.5]);
translate([-27.7/2,-0.6,0])cube([27.7,1.2,2.5]);
cylinder(d=12,h=8,$fn=60);
}
translate([0,0,-1])cylinder(d=10,h=12,$fn=60);
}

module redondear()
{
difference(){
cube([2.5,2.5,1.2]);
translate([0,0,-1])cylinder(d=4,h=4,$fn=60);
}
}
