$fn=30;

difference(){
translate([-45,-4,0])cube([90,125,3]);

translate([27,45,-1])rotate([0,0,32])
    cube([8,8,5]);
    
translate([25,30,-1])cylinder(d=2.5,h=5);    
translate([-25,30,-1])cylinder(d=2.5,h=5);    
      
translate([135,112,-1])cylinder(r=123,h=5,$fn=120);
translate([-135,112,-1])cylinder(r=123,h=5,$fn=120);

translate([-41.1,5.5,-1])
minkowski(){
    cylinder(d=8,h=8);
    cube([0.1,17,8]);
}

translate([35,6.5,-1])cube([3,15,5]);
translate([23,8,-1])cube([12.1,12,5]);
    
translate([41.1,5.5,-1])
minkowski(){
    cylinder(d=8,h=8);
    cube([0.1,17,8]);
}

translate([-38,6.5,-1])cube([3,15,5]);
translate([-35.1,8,-1])cube([12.1,12,5]);

translate([-17,-2,-1])cube([34,34,8]);     

translate([-22,10,-1])cylinder(d=3,h=8);
translate([-22,18,-1])cylinder(d=3,h=8);
translate([22,10,-1])cylinder(d=3,h=8);
translate([22,18,-1])cylinder(d=3,h=8);

translate([6.73,110,-1])cylinder(d=2.5,h=5);
translate([-6.73,110,-1])cylinder(d=2.5,h=5);

rotate([0,0,90])
{
translate([50,7.62,-1])pin20mil(21,1.94,10);
translate([50,-7.62,-1])pin20mil(21,1.94,10);
}
}


//taladros para pines a 10 por pulgada

module pin20mil(n,d_paso,h_paso)
for (i=[1:n]){
    translate([(i-1)*2.54,0,0])cylinder(d=d_paso,h=h_paso);
}

// morro para montar sensores de líneas QTR-8x

translate([0,122.5,0])
difference(){
union(){
translate([-34.9,-4.5,0])cube([69.2,9,3]);
translate([-34.9,0,0])cylinder(d=9,h=3);
translate([34.9,0,0])cylinder(d=9,h=3);
translate([14.5,-7,1.5])cube([5,5,3],center=true);
translate([-14.5,-7,1.5])cube([5,5,3],center=true);
}
translate([-34.9,0,0])cylinder(d=2.8,h=10,center=true);
translate([34.9,0,0])cylinder(d=2.8,h=10,center=true);

translate([17,-9.5,-1])cylinder(d=10,h=5);
translate([-17,-9.5,-1])cylinder(d=10,h=5);

}
