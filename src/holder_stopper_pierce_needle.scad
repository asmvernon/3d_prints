//HOLDER TO PIERCE STOPPER WITH NEEDLE
//design by AMV & KS
//17.11.2017, Warwick, UK

// PARAMETERS - All units in mm

// STOPPER
stopper_R_top = 8.5/2;
stopper_R_bottom = 7/2;
stopper_H = 14;

//NEEDLE
needle_R = 1.5/2; //0.3 for blue needle
needle_H = 35;
needle_protusion_H = 5; // room for the needle to come through other side
needle_cannal_H = needle_H - stopper_H - needle_protusion_H;

//SUPPORT
cubeW = 15;
cubeL = 15;
cubeH = stopper_H+needle_cannal_H;

difference(){
    //CUBE
    translate([0,0,cubeH/2]) color("black") cube([cubeW,cubeL,cubeH],true,$fn=60);  
    
    //NEEDLE
    translate([0,0,-1]) color("pink") cylinder(h = needle_H, r1 = needle_R, r2 = needle_R, center = false,$fn=60);
    
    //STOPPER
    translate([0,0,needle_cannal_H]) color("green") cylinder(h = stopper_H+1, r1 = stopper_R_bottom, r2 = stopper_R_top, center = false,$fn=60);

    //LOOK INSIDE CUBE
//    translate([0,-(cubeL/2+1),cubeH/2]) color("yellow") cube([cubeW+2,cubeL+2,cubeH+2],true,$fn=60);  


} // "TOP difference" ends
//
