$fn=30;

translate([0,122,0])rotate([0,0,90])ballcaster();

difference(){
translate([-51,0,0])cube([102,123,2]);
  
translate([-165,130,-1])cylinder(h=4,d=308,$fn=120);
translate([165,130.1,-1])cylinder(h=4,d=308,$fn=120);
    
//conexion motores
translate([-32,11,-1])cylinder(d=2,h=8);
translate([-32,19,-1])cylinder(d=2,h=8);
translate([32,11,-1])cylinder(d=2,h=8);
translate([32,19,-1])cylinder(d=2,h=8);
     
//soporte motores
translate([-47,6.5,-1])cylinder(d=2.8,h=8);
translate([-47,24,-1])cylinder(d=2.8,h=8);
translate([47,6.5,-1])cylinder(d=2.8,h=8);
translate([47,24,-1])cylinder(d=2.8,h=8);
    
//zocalo Arduino nano
translate([-7*2.54,35,0])
{
translate([0,7.62,-1])pin20mil(15,1.2,10);
translate([0,-7.62,-1])pin20mil(15,1.2,10);
}

//zocalo driver y encoder
translate([25.4,35,-1])pin20mil(4,1.2,10);
translate([25.4,42.62,-1])pin20mil(4,1.2,10);
translate([25.4,27.38,-1])pin20mil(6,1.2,10);
mirror([1,0,0]){
translate([25.4,35,-1])pin20mil(4,1.2,10);
translate([25.4,42.62,-1])pin20mil(4,1.2,10);
translate([25.4,27.38,-1])pin20mil(6,1.2,10);

//orificio succion
translate([0,65,-1])cylinder(d=25,h=5,$fn=120);
}

//rebaje ballcaster
translate([0,122,5.5])sphere(d=10.5);

//orificios soporte bateria
translate([15,20,-1])cylinder(d=4,h=4);
translate([-15,20,-1])cylinder(d=4,h=4);
//translate([15,8,-1])cylinder(d=4,h=4);
//translate([-15,8,-1])cylinder(d=4,h=4);
}

//morro
difference(){
minkowski(){
cylinder(d=5,h=1);
translate([-8.75,120,0])cube([17.5,17.5,1]);
}
translate([0,122,5.5])sphere(d=10.5);
translate([-8.89,135+1.27,-1])pin20mil(8,1.2,5);
translate([-8.89,135-1.27,-1])pin20mil(8,1.2,5);
}


module pin20mil(n,d_paso,h_paso)
 for (i=[1:n]){
     translate([(i-1)*2.54,0,0])cylinder(d=d_paso,h=h_paso,$fn=12);
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
