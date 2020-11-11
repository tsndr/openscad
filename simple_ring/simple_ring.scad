// Config
innerDiameter = 19.4;
height = 6.8;
wallThickness = 2;

// Global Settings
$fn = $preview ? 100 : 360;

// Calculation
sphereDiameter = (innerDiameter+2*wallThickness);

difference() {
	sphere(d=sphereDiameter);
    cylinder(h=sphereDiameter, d=innerDiameter, center=true);
    
    translate([0, 0, sphereDiameter/2+height/2])
        cube(size=sphereDiameter, center=true);
      
    translate([0, 0, -(sphereDiameter/2+height/2)])
        cube(size=sphereDiameter, center=true);
}
