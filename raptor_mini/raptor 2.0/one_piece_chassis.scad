$fn=30;

difference(){
translate([-45,-4,0])cube([90,122,3]);

translate([135,112,-1])cylinder(r=123,h=5,$fn=120);
translate([-135,112,-1])cylinder(r=123,h=5,$fn=120);

translate([-22,10,-1])cylinder(d=3,h=8);
translate([-22,18,-1])cylinder(d=3,h=8);
translate([22,10,-1])cylinder(d=3,h=8);
translate([22,18,-1])cylinder(d=3,h=8);
    
translate([-41.1,5.5,-1])cylinder(d=2.8,h=8);
translate([-41.1,22.5,-1])cylinder(d=2.8,h=8);
translate([41.1,5.5,-1])cylinder(d=2.8,h=8);
translate([41.1,22.5,-1])cylinder(d=2.8,h=8);

translate([9.25,0,-1])cylinder(d=4.5,h=6);
translate([-9.25,0,-1])cylinder(d=4.5,h=6);
translate([9.25,36,-1])cylinder(d=4.5,h=6);
translate([-9.25,36,-1])cylinder(d=4.5,h=6);   
    
translate([28,45,-1])rotate([0,0,32])
    cube([8,8,5]);

translate([0,73,0])
translate([0,38,0])cylinder(d=14,h=8.5);

rotate([0,0,90])
{
translate([50,7.62,-1])pin20mil(21,1.94,10);
translate([50,-7.62,-1])pin20mil(21,1.94,10);
}
}

// soporte bola

translate([0,73,0])
difference(){
union(){
translate([0,38,0])cylinder(d=14,h=8.5);
translate([0,38,8.5])cylinder(r1=7, r2=6, h=1);
}
translate([0,38,5.5])cylinder(d=9.5,h=25);
translate([0,38,6.4])sphere(d=10.5);
translate([0,38,11])cube(size=[3,15,16],center=true);
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

translate([-3.5*2.54,-1,-1])pin20mil(8,1.94,10);

}

//taladros para pines a 10 por pulgada

module pin20mil(n,d_paso,h_paso)
for (i=[1:n]){
    translate([(i-1)*2.54,0,0])cylinder(d=d_paso,h=h_paso);
}
