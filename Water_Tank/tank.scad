// Dimensions

Length = 100;
Thickness = 3;

// Modules
module base() {
  cube([Length + (2 * Thickness), Length + (2 * Thickness), Thickness]);
}

module wall() {
  cube([Length + (2 * Thickness), Thickness, Length + Thickness]);
}

// Model
base();

wall();

translate([0, Length + Thickness, 0]) {
  wall();
}

rotate([0, 0, 90]) {
  wall();
}

translate([Length + (2 * Thickness), 0, 0]) {
  rotate([0, 0, 90]) {
    wall();
  }
}
