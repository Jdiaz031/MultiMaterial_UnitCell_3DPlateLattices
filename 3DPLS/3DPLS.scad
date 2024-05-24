module plate(XRotate,YRotate,Cube,plate_width){
    intersection(){
        rotate([XRotate,YRotate,0]) cube([(2.5*Cube),(2.5*Cube),plate_width],center=true);
        cube(Cube,center=true);
    }
}

//Body Centered Cubic
module BCC(cube_size,thickness_of_plate){
plate(45,0,cube_size,thickness_of_plate);
plate(-45,0,cube_size,thickness_of_plate);
plate(45,90,cube_size,thickness_of_plate);
plate(-45,90,cube_size,thickness_of_plate);
plate(0,45,cube_size,thickness_of_plate);
plate(0,-45,cube_size,thickness_of_plate);
}

//Simple Cubic
module SC(cube_size,thickness_of_plate){
plate(0,0,cube_size,thickness_of_plate);
plate(0,90,cube_size,thickness_of_plate);
plate(90,90,cube_size,thickness_of_plate);
}

//Face Centered Cubic
module FCC(cube_size,thickness_of_plate){
    module HexPlate(cube_size,thickness_of_plate,ZRotate){
        intersection(){
        cube(cube_size,center=true);
        rotate([0,-55,ZRotate]) cube([cube_size*sqrt(2),cube_size*sqrt(2),thickness_of_plate],center=true);
        }
    }
    module TrianglePlate(cube_size,thickness_of_plate){
        intersection(){
        cube(cube_size,center=true);
        translate([cube_size/2,cube_size/2,0]) rotate([55,0,135]) cube([2*cube_size*sqrt(2),2*cube_size*sqrt(2),thickness_of_plate],center=true);
        }
    }
    module Complete(cube_size,thickness_of_plate){
    union(){
    //HEXAGONAL PLATES
    HexPlate(cube_size,thickness_of_plate,45);
    HexPlate(cube_size,thickness_of_plate,135);
    HexPlate(cube_size,thickness_of_plate,225);
    HexPlate(cube_size,thickness_of_plate,315);
    //TRIANGULAR PLATES
    TrianglePlate(cube_size,thickness_of_plate);
    rotate([0,0,90]) TrianglePlate(cube_size,thickness_of_plate);
    rotate([0,0,-90]) TrianglePlate(cube_size,thickness_of_plate);
    rotate([0,0,-180]) TrianglePlate(cube_size,thickness_of_plate);
    rotate([0,90,0]) TrianglePlate(cube_size,thickness_of_plate);
    rotate([0,90,90]) TrianglePlate(cube_size,thickness_of_plate);
    rotate([0,90,-90]) TrianglePlate(cube_size,thickness_of_plate);
    rotate([0,90,-180]) TrianglePlate(cube_size,thickness_of_plate);
    }
    }
    Complete(cube_size,thickness_of_plate);
}

module SC_BCC(cube_size,thickness_of_plate){
BCC(cube_size,thickness_of_plate);
SC(cube_size,thickness_of_plate);
}

module SC_FCC(cube_size,thickness_of_plate){
SC(cube_size,thickness_of_plate);
FCC(cube_size,thickness_of_plate);
}

module SC_BCC_FCC(cube_size,thickness_of_plate){
SC(cube_size,thickness_of_plate);
BCC(cube_size,thickness_of_plate);
FCC(cube_size,thickness_of_plate);
}

//SC BCC Frag produces the fragmented structure of SC-BCC which is compatible with SC
module SC_BCC_frag(cube_size,thickness_of_plate){
difference(){
   BCC(cube_size,thickness_of_plate);
   SC(cube_size,thickness_of_plate);
}
}

//BCC_SC Frag produces fragmented structures of SC-BCC which is compatible with BCC
module BCC_SC_frag(cube_size,thickness_of_plate){
difference(){
    SC(cube_size,thickness_of_plate);
    BCC(cube_size,thickness_of_plate);
}
}

///FCC_SC Frag produces fragmented structures of SC-FCC which is compatible with FCC
module FCC_SC_frag(cube_size,thickness_of_plate){
difference(){
    SC(cube_size,thickness_of_plate);
    FCC(cube_size,thickness_of_plate);
}
}

//SC_FCC Frag produces the fragmented structure of SC-FCC which is compatible with SC
module SC_FCC_frag(cube_size,thickness_of_plate){
difference(){
    FCC(cube_size,thickness_of_plate);
    SC(cube_size,thickness_of_plate);
}
}
