$fn=30;

translate([0,122,0])rotate([0,0,90])ballcaster();

difference(){
translate([-51,0,0])cube([102,123,2]);
  
translate([-165,130,-1])cylinder(h=4,d=308,$fn=120);
translate([165,130.1,-1])cylinder(h=4,d=308,$fn=120);
    
//conexion motores
translate([-32,11,-1])cylinder(d=3,h=8);
translate([-32,19,-1])cylinder(d=3,h=8);
translate([32,11,-1])cylinder(d=3,h=8);
translate([32,19,-1])cylinder(d=3,h=8);
     
//soporte motores
translate([-47,6.5,-1])cylinder(d=2.8,h=8);
translate([-47,24,-1])cylinder(d=2.8,h=8);
translate([47,6.5,-1])cylinder(d=2.8,h=8);
translate([47,24,-1])cylinder(d=2.8,h=8);
    
//zocalo Arduino nano
translate([-17.5,35,0])
{
translate([0,7.62,-1])pin20mil(15,1.7,10);
translate([0,-7.62,-1])pin20mil(15,1.7,10);
}

//zocalo driver y encoder
translate([24,37,-1])pin20mil(4,1.7,10);
translate([24,44.62,-1])pin20mil(4,1.7,10);
translate([25,30,-1])pin20mil(6,1.7,10);
mirror([1,0,0]){
translate([24,37,-1])pin20mil(4,1.7,10);
translate([24,44.62,-1])pin20mil(4,1.7,10);
translate([25,30,-1])pin20mil(6,1.7,10);

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

difference(){
translate([-11.25,120,0])cube([22.5,11,2]);
translate([0,122,5.5])sphere(d=10.5);
}

//radio acuerdo delante
difference(){
translate([-16.25,125,0])cube([32.5,6,2]);
translate([-16.25,125,-1])cylinder(d=10,h=4);
translate([16.25,125,-1])cylinder(d=10,h=4);
translate([0,122,5.5])sphere(d=10.5);
}

//morro
translate([0,135,0])
difference(){
hull(){
translate([16,0,0])cylinder(d=10,h=2);
translate([-16,0,0])cylinder(d=10,h=2);
}
translate([-8.89,1.27,-1])pin20mil(8,1.94,5);
translate([-8.89,-1.27,-1])pin20mil(8,1.94,5);

//translate([18.5,0,-1])cylinder(d=2.8,h=4);
//translate([-18.5,0,-1])cylinder(d=2.8,h=4);
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