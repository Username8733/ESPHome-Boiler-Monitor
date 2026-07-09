
// ESPHome Boiler Monitor - Sensor Holder
// For BPW40/BPW77-style phototransistor in a light-shield tube.
// Print in black PETG/PLA if possible.
// Units: mm

$fn = 96;

tube_outer_d = 12;
tube_inner_d = 5.2;
tube_length  = 22;

pad_w = 26;
pad_h = 16;
pad_t = 2.4;

cable_slot_w = 3.0;
cable_slot_h = 4.0;

module sensor_tube() {
  difference() {
    cylinder(h=tube_length, d=tube_outer_d);
    translate([0,0,-0.5])
      cylinder(h=tube_length+1, d=tube_inner_d);

    // rear cable slot
    translate([-cable_slot_w/2, -tube_outer_d/2-0.2, 2])
      cube([cable_slot_w, tube_outer_d/2+1, cable_slot_h]);
  }
}

module mounting_pad() {
  translate([-pad_w/2, -pad_h/2, 0])
    cube([pad_w, pad_h, pad_t]);
}

union() {
  mounting_pad();
  translate([0,0,pad_t])
    sensor_tube();
}
