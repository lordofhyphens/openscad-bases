module square_base(x, y, z) {
    hull() {
    translate([0,0,-0.5+z])
        cube([x,y,1], center=true);
    translate([0,0,0.25])
        cube([x+2.25,y+2.25,0.5], center=true);
    }
}


