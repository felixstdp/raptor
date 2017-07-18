$fn=30;

difference(){
translate([-45,-4,0])cube([90,125,2]);

translate([135,112,-1])cylinder(r=123,h=5,$fn=120);
translate([-135,112,-1])cylinder(r=123,h=5,$fn=120);

  

translate([-22,10,-1])cylinder(d=3,h=8);
translate([-22,18,-1])cylinder(d=3,h=8);
translate([22,10,-1])cylinder(d=3,h=8);
translate([22,18,-1])cylinder(d=3,h=8);

translate([-50,40,-1])cube([100,100,5]);

}
