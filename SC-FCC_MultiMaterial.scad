cube_size=20; 
thickness_of_plate=2;
frag="YES";
whole=0;

//Face Centered Cubic
module HexPlate(cube_size,thickness_of_plate,ZRotate){
intersection(){
        cube(cube_size,center=true);
        rotate([0,-55,ZRotate]) cube([cube_size*sqrt(2),cube_size*sqrt(2),thickness_of_plate],center=true);
    }
}

module TrianglePlate(cube_size,thickness_of_plate){
    intersection(){
        cube(cube_size,center=true);
        translate([10,10,0]) rotate([55,0,135]) cube([2*cube_size*sqrt(2),2*cube_size*sqrt(2),thickness_of_plate],center=true);
    }
}

module plate(XRotate,YRotate,cube_size,plate_width){
    intersection(){
        rotate([XRotate,YRotate,0]) cube([(2.5*cube_size),(2.5*cube_size),plate_width],center=true);
        cube(cube_size,center=true);
    }
}

if(frag=="YES"){
z=12-whole;
difference(){
    union(){
        for(k=[1:z]){
            if(k==15) plate(0,90,cube_size,thickness_of_plate);
            if(k==14) plate(90,90,cube_size,thickness_of_plate);
            if(k==13) HexPlate(cube_size,thickness_of_plate,45);
            if(k==12) HexPlate(cube_size,thickness_of_plate,225);
            if(k==11) HexPlate(cube_size,thickness_of_plate,135);
            if(k==10) HexPlate(cube_size,thickness_of_plate,315);
            //TRIANGULAR PLATES
            if(k==9) rotate([0,90,0]) TrianglePlate(cube_size,thickness_of_plate);
            if(k==8) rotate([0,0,-180]) TrianglePlate(cube_size,thickness_of_plate);
            if(k==7) rotate([0,90,-180]) TrianglePlate(cube_size,thickness_of_plate);
            if(k==6) TrianglePlate(cube_size,thickness_of_plate);
            if(k==5) rotate([0,90,90]) TrianglePlate(cube_size,thickness_of_plate);
            if(k==4) rotate([0,0,-90]) TrianglePlate(cube_size,thickness_of_plate);
            if(k==3) rotate([0,90,-90]) TrianglePlate(cube_size,thickness_of_plate);
            if(k==2) rotate([0,0,90]) TrianglePlate(cube_size,thickness_of_plate);
            if(k==1) plate(0,0,cube_size,thickness_of_plate);
        }
    }
    union(){
        for(x=[1:whole]){
            if(x==1) plate(0,90,cube_size,thickness_of_plate);
            if(x==2) plate(90,90,cube_size,thickness_of_plate);
            if(x==3) HexPlate(cube_size,thickness_of_plate,45);
            if(x==4) HexPlate(cube_size,thickness_of_plate,225);
            if(x==5) HexPlate(cube_size,thickness_of_plate,135);
            if(x==6) HexPlate(cube_size,thickness_of_plate,315);
            //TRIANGULAR PLATES
            if(x==7) rotate([0,90,0]) TrianglePlate(cube_size,thickness_of_plate);
            if(x==8) rotate([0,0,-180]) TrianglePlate(cube_size,thickness_of_plate);
            if(x==9) rotate([0,90,-180]) TrianglePlate(cube_size,thickness_of_plate);
            if(x==10) TrianglePlate(cube_size,thickness_of_plate);
            if(x==11) rotate([0,90,90]) TrianglePlate(cube_size,thickness_of_plate);
            if(x==12) rotate([0,0,-90]) TrianglePlate(cube_size,thickness_of_plate);
            if(x==13) rotate([0,90,-90]) TrianglePlate(cube_size,thickness_of_plate);
            if(x==14) rotate([0,0,90]) TrianglePlate(cube_size,thickness_of_plate);
            if(x==15) plate(0,0,cube_size,thickness_of_plate);
        }
    }
}
}

if(frag=="NO"){
    for(x=[1:whole]){
        if(x==1) plate(0,90,cube_size,thickness_of_plate);
        if(x==2) plate(90,90,cube_size,thickness_of_plate);
        if(x==3) HexPlate(cube_size,thickness_of_plate,45);
        if(x==4) HexPlate(cube_size,thickness_of_plate,225);
        if(x==5) HexPlate(cube_size,thickness_of_plate,135);
        if(x==6) HexPlate(cube_size,thickness_of_plate,315);
        //TRIANGULAR PLATES
        if(x==7) rotate([0,90,0]) TrianglePlate(cube_size,thickness_of_plate);
        if(x==8) rotate([0,0,-180]) TrianglePlate(cube_size,thickness_of_plate);
        if(x==9) rotate([0,90,-180]) TrianglePlate(cube_size,thickness_of_plate);
        if(x==10) TrianglePlate(cube_size,thickness_of_plate);
        if(x==11) rotate([0,90,90]) TrianglePlate(cube_size,thickness_of_plate);
        if(x==12) rotate([0,0,-90]) TrianglePlate(cube_size,thickness_of_plate);
        if(x==13) rotate([0,90,-90]) TrianglePlate(cube_size,thickness_of_plate);
        if(x==14) rotate([0,0,90]) TrianglePlate(cube_size,thickness_of_plate);
        if(x==15) plate(0,0,cube_size,thickness_of_plate);
    }
}
