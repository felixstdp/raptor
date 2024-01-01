$fn=30;

translate([0,135,2])rotate([0,0,90])ballcaster();

difference(){
translate([-51,0,0])cube([102,128,2]);
  
translate([-165,135,-1])cylinder(h=4,d=311.5,$fn=120);
translate([165,135,-1])cylinder(h=4,d=311.5,$fn=120);
    
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
//translate([-7*2.54,35,0])
translate([0,72,0])rotate([0,0,90])
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
translate([0,47,-1])cylinder(d=28,h=5,$fn=120);
}

//orificios soporte bateria
translate([15,20,-1])cylinder(d=4,h=4);
translate([-15,20,-1])cylinder(d=4,h=4);
//translate([15,8,-1])cylinder(d=4,h=4);
//translate([-15,8,-1])cylinder(d=4,h=4);
}

//morro
translate([-9.45,120,0])cube([18.9,24,2]);
difference(){
hull(){
translate([10,149,0])cylinder(d=13,h=2);
translate([-10,149,0])cylinder(d=13,h=2);
}
translate([-8.89,151+1.27,-1])pin20mil(8,1.2,5);
translate([-8.89,151-1.27,-1])pin20mil(8,1.2,5);
translate([-12.7,151-3*1.27,-1])pin20mil(11,1.2,5);
}


module pin20mil(n,d_paso,h_paso)
 for (i=[1:n]){
     translate([(i-1)*2.54,0,0])cylinder(d=d_paso,h=h_paso,$fn=12);
} 

module ballcaster(){
$fn=120;
difference(){
union(){
cylinder(d=11,h=4);
difference(){
translate([0,0,4])sphere(d=11);
translate([0,0,6.5])cylinder(d=11, h=10);
translate([0,0,-3])cylinder(d=11, h=4);
}
}
translate([0,0,5])cylinder(d=7.8,h=5);
translate([0,0,4])sphere(d=8.5);
rotate([0,0,90])translate([0,0,10])
cube(size=[2,11,16],center=true);
}
}
