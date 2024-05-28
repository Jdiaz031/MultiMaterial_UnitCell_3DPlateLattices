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

if(frag=="YES"){
z=12-whole;
difference(){
    union(){
        for(k=[1:z]){
            if(k==12) HexPlate(cube_size,thickness_of_plate,45);
            if(k==11) HexPlate(cube_size,thickness_of_plate,225);
            if(k==10) HexPlate(cube_size,thickness_of_plate,135);
            if(k==9) HexPlate(cube_size,thickness_of_plate,315);
            //TRIANGULAR PLATES
            if(k==8) rotate([0,90,0]) TrianglePlate(cube_size,thickness_of_plate);
            if(k==7) rotate([0,0,-180]) TrianglePlate(cube_size,thickness_of_plate);
            if(k==6) rotate([0,90,-180]) TrianglePlate(cube_size,thickness_of_plate);
            if(k==5) TrianglePlate(cube_size,thickness_of_plate);
            if(k==4) rotate([0,90,90]) TrianglePlate(cube_size,thickness_of_plate);
            if(k==3) rotate([0,0,-90]) TrianglePlate(cube_size,thickness_of_plate);
            if(k==2) rotate([0,90,-90]) TrianglePlate(cube_size,thickness_of_plate);
            if(k==1) rotate([0,0,90]) TrianglePlate(cube_size,thickness_of_plate);    
        }
    }
    union(){
        for(x=[1:whole]){
            if(x==1) HexPlate(cube_size,thickness_of_plate,45);
            if(x==2) HexPlate(cube_size,thickness_of_plate,225);
            if(x==3) HexPlate(cube_size,thickness_of_plate,135);
            if(x==4) HexPlate(cube_size,thickness_of_plate,315);
            //TRIANGULAR PLATES
            if(x==5) rotate([0,90,0]) TrianglePlate(cube_size,thickness_of_plate);
            if(x==6) rotate([0,0,-180]) TrianglePlate(cube_size,thickness_of_plate);
            if(x==7) rotate([0,90,-180]) TrianglePlate(cube_size,thickness_of_plate);
            if(x==8) TrianglePlate(cube_size,thickness_of_plate);
            if(x==9) rotate([0,90,90]) TrianglePlate(cube_size,thickness_of_plate);
            if(x==10) rotate([0,0,-90]) TrianglePlate(cube_size,thickness_of_plate);
            if(x==11) rotate([0,90,-90]) TrianglePlate(cube_size,thickness_of_plate);
            if(x==12) rotate([0,0,90]) TrianglePlate(cube_size,thickness_of_plate);
        }
    }
}
}
else if(frag=="NO"){
    for(x=[1:whole]){
        if(x==1) HexPlate(cube_size,thickness_of_plate,45);
        if(x==2) HexPlate(cube_size,thickness_of_plate,225);
        if(x==3) HexPlate(cube_size,thickness_of_plate,135);
        if(x==4) HexPlate(cube_size,thickness_of_plate,315);
        //TRIANGULAR PLATES
        if(x==5) rotate([0,90,0]) TrianglePlate(cube_size,thickness_of_plate);
        if(x==6) rotate([0,0,-180]) TrianglePlate(cube_size,thickness_of_plate);
        if(x==7) rotate([0,90,-180]) TrianglePlate(cube_size,thickness_of_plate);
        if(x==8) TrianglePlate(cube_size,thickness_of_plate);
        if(x==9) rotate([0,90,90]) TrianglePlate(cube_size,thickness_of_plate);
        if(x==10) rotate([0,0,-90]) TrianglePlate(cube_size,thickness_of_plate);
        if(x==11) rotate([0,90,-90]) TrianglePlate(cube_size,thickness_of_plate);
        if(x==12) rotate([0,0,90]) TrianglePlate(cube_size,thickness_of_plate);
    }
}
