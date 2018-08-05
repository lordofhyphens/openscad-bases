module ellipse_base(x, y,z, slot=[], shift=[0,0]) {
    difference() {
    scale([y/x, 1.0,1.0])
        cylinder(d1=x,d2=x-2.25,h=z, $fs=0.2, $fa=1);
        if (slot != []) {
            translate([shift[0],shift[1],z/2])
            cube([slot[0], slot[1], z+4], center=true);
        }
    }
}

ellipse_base(32,32, 3.5, [18.9, 2.5], [0, -3]);
