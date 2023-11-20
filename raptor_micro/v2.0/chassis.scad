$fn=60;

translate([0,112,0])rotate([0,0,90])ballcaster();

difference(){
translate([-50,0,0])cube([100,125,2]);
  
translate([-165,130,-1])rotate([0,0,-90])cuarto(4,308);
mirror([1,0,0])
translate([-165,130.1,-1])rotate([0,0,-90])cuarto(4,308);
    
translate([-28,11,-1])cylinder(d=3,h=8);
translate([-28,19,-1])cylinder(d=3,h=8);
translate([28,11,-1])cylinder(d=3,h=8);
translate([28,19,-1])cylinder(d=3,h=8);
     
translate([-43,6.5,-1])cylinder(d=2.8,h=8);
translate([-43,24,-1])cylinder(d=2.8,h=8);
translate([43,6.5,-1])cylinder(d=2.8,h=8);
translate([43,24,-1])cylinder(d=2.8,h=8);
    
rotate([0,0,90])
{
translate([45.5,7.62,-1])pin20mil(21,1.94,10);
translate([45.5,-7.62,-1])pin20mil(21,1.94,10);
}

translate([0,112,5.5])sphere(d=10.5);
}

translate([0,125,0])
difference(){
hull(){
translate([34.5,0,0])cylinder(d=10,h=2);
translate([-34.5,0,0])cylinder(d=10,h=2);
}
translate([34.5,0,-1])cylinder(d=2.5,h=4);
translate([-34.5,0,-1])cylinder(d=2.5,h=4);
}

module pin20mil(n,d_paso,h_paso)
 for (i=[1:n]){
     translate([(i-1)*2.54,0,0])cylinder(d=d_paso,h=h_paso);
} 

module cuarto(h, d){
intersection(){
cylinder(h=h, d=d,$fn=120);
cube([d+1,d+1,h+1]);
}
}

module ballcaster(){
difference(){
union(){
cylinder(d=14,h=7.5);
translate([0,0,7.5])cylinder(r1=7, r2=6, h=1);
}
translate([0,0,5.5])cylinder(d=9.5,h=25);
translate([0,0,5.5])sphere(d=10.5);
translate([0,0,11])cube(size=[3,15,16],center=true);
}
}
