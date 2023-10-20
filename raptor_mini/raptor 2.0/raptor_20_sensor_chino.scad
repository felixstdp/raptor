// buscar sensor como '8 sensor lines follow'

$fn=30;
 
 difference(){
 translate([-40,0,0])cube([80,113,3]);
 
 translate([135,116,-1])cylinder(r=123,h=5,$fn=120);
 translate([-135,116,-1])cylinder(r=123,h=5,$fn=120);
 
 translate([-20,11,-1])cylinder(d=3,h=8);
 translate([-20,19,-1])cylinder(d=3,h=8);
 translate([20,11,-1])cylinder(d=3,h=8);
 translate([20,19,-1])cylinder(d=3,h=8);
     
 translate([-32.5,6.5,-1])cylinder(d=2.8,h=8);
 translate([-32.5,24,-1])cylinder(d=2.8,h=8);
 translate([32.5,6.5,-1])cylinder(d=2.8,h=8);
 translate([32.5,24,-1])cylinder(d=2.8,h=8);
 
 rotate([0,0,90])
 {
 translate([45.5,7.62,-1])pin20mil(21,1.94,10);
 translate([45.5,-7.62,-1])pin20mil(21,1.94,10);
 }
 }
 
 %translate([0,106,5.5])sphere(d=10);
 
 // soporte bola
 
 translate([0,106,0])
 difference(){
 union(){
 cylinder(d=14,h=7.5);
 translate([0,0,7.5])cylinder(r1=7, r2=6, h=1);
 }
 translate([0,0,5.5])cylinder(d=9.5,h=25);
 translate([0,0,5.5])sphere(d=10.5);
 translate([0,0,11])cube(size=[3,15,16],center=true);
 }
 
 // morro para montar sensores de líneas QTR-8x
 
 translate([0,117.5,0])
 difference(){
 union(){
 translate([-18.5,-4.5,0])cube([37,9,3]);
 translate([-18.5,0,0])cylinder(d=9,h=3);
 translate([18.5,0,0])cylinder(d=9,h=3);
 translate([14.5,-7,1.5])cube([5,5,3],center=true);
 translate([-14.5,-7,1.5])cube([5,5,3],center=true);
 }
 translate([-18.5,0,0])cylinder(d=2.8,h=10,center=true);
 translate([18.5,0,0])cylinder(d=2.8,h=10,center=true);
 
 translate([17,-9.5,-1])cylinder(d=10,h=5);
 translate([-17,-9.5,-1])cylinder(d=10,h=5);
 
 translate([-4*2.54,-2,-1])pin20mil(9,1.94,10);
 
 }
 
 //taladros para pines a 10 por pulgada
 
 module pin20mil(n,d_paso,h_paso)
 for (i=[1:n]){
     translate([(i-1)*2.54,0,0])cylinder(d=d_paso,h=h_paso);
} 
