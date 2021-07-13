translate([-50,8,3])n20();
translate([50,8,3])scale([-1,1,1])n20();
difference(){
translate([-50,0,0])cube([100,120,3]);
translate([-130,120,-1])cylinder(d=230,h=5,$fn=120);
translate([130,120,-1])cylinder(d=230,h=5,$fn=120);
rotate([0,0,90])translate([45,7.62,-1])
    pin20mil(27,2,5);
rotate([0,0,90])translate([45,-7.62,-1])
    pin20mil(27,2,5);
}


module n20()
{
cube([9,12,10]);
translate([9,6,5])
rotate([0,90,0])
intersection(){
cylinder(d=12,h=15,$fn=60);
translate([-5,-6,0])cube([10,12,15]);
}
translate([0,6,5])rotate([0,-90,0])
difference(){
cylinder(d=3,h=10,$fn=30);   
translate([1,-5,0])cube(11);
}
}


module pin20mil(n,d_paso,h_paso)
for (i=[1:n]){
translate([(i-1)*2.54,0,0])
cylinder(d=d_paso,h=h_paso,$fn=30);
}
