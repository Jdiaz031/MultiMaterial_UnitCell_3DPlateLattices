cube_size=20; //Cube Dimensions in mm
plate_size=2; //Plate Thickness in mm
whole=3;
frag="YES";

module plate(XRotate,YRotate,cube_size,plate_width){
    intersection(){
        rotate([XRotate,YRotate,0]) cube([(2.5*cube_size),(2.5*cube_size),plate_width],center=true);
        cube(cube_size,center=true);
    }
}
if(frag=="YES"){
z=8-whole; 
difference(){
    union(){
    for(k=[1:z]){
        if(k==9) plate(45,90,cube_size,plate_size);
        if(k==8) rotate([0,0,90]) plate(45,90,cube_size,plate_size);
        if(k==7) plate(0,90,cube_size,plate_size);
        if(k==6) plate(90,90,cube_size,plate_size);
        if(k==5) plate(0,45,cube_size, plate_size);
        if(k==4) rotate([0,90,0]) plate(0,45,cube_size, plate_size);
        if(k==3) plate(45,0,cube_size,plate_size);
        if(k==2) rotate([90,0,0]) plate(45,0,cube_size,plate_size);
        if(k==1) plate(0,0,cube_size,plate_size);
        }
    }
    union(){
    for (x=[1:whole]){
        if(x==1) plate(45,90,cube_size,plate_size);
        if(x==2) rotate([0,0,90]) plate(45,90,cube_size,plate_size);
        if(x==3) plate(0,90,cube_size,plate_size);
        if(x==4) plate(90,90,cube_size,plate_size);
        if(x==5) plate(0,45,cube_size, plate_size);
        if(x==6) rotate([0,90,0]) plate(0,45,cube_size, plate_size);
        if(x==7) plate(45,0,cube_size,plate_size);
        if(x==8) rotate([90,0,0]) plate(45,0,cube_size,plate_size);
        if(x==9) plate(0,0,cube_size,plate_size);
        }
    }
}
}
else if(frag=="NO"){
    for (x=[1:whole]){
        if(x==1) plate(45,90,cube_size,plate_size);
        if(x==2) rotate([0,0,90]) plate(45,90,cube_size,plate_size);
        if(x==3) plate(0,90,cube_size,plate_size);
        if(x==4) plate(90,90,cube_size,plate_size);
        if(x==5) plate(0,45,cube_size, plate_size);
        if(x==6) rotate([0,90,0]) plate(0,45,cube_size, plate_size);
        if(x==7) plate(45,0,cube_size,plate_size);
        if(x==8) rotate([90,0,0]) plate(45,0,cube_size,plate_size);
        if(x==9) plate(0,0,cube_size,plate_size);
    }
}
