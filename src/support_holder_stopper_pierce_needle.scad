//SUPPORT FOR HOLDER TO PIERCE STOPPER WITH NEEDLE
//design by AMV & KS
//17.11.2017, Warwick, UK

//// PARAMETERS - All units in mm

// STOPPER
stopper_R_top = 9/2;
//stopper_protusion_H = 2;

//STOPPER LIP
stopper_lip_R = stopper_R_top/1.5;
stopper_lip_H = 3;

//NEEDLE
needle_protusion_H = 6;

//CUBE LIP
cube_lip_W = 15.5;
cube_lip_L = 15.5;
cube_lip_H = 6; // How much more should this support and the stopper holder should overlap

//SUPPORT
cubeW = cube_lip_W+10;
cubeL = cube_lip_L+10;
cubeH = needle_protusion_H + stopper_lip_H + cube_lip_H;

//CUBES ARE PLACED HALF THEIR HEIGHT down Z, but centered in X and Y if centre = true
//CYLINDERS ARE PLACED AT Z = 0 and centered in X and Y if centre = true

//// MAKE PRINT
difference(){
    //CUBE
    translate([0,0,cubeH/2]) color("yellow") cube([cubeW,cubeL,cubeH],true,$fn=60);  
      
    //CUBE LIP
    translate([0,0,needle_protusion_H+stopper_lip_H+cubeH/2]) color("black") cube([cube_lip_W,cube_lip_L,cubeH],true,$fn=60);  

    //STOPPER LIP
    translate([0,0,needle_protusion_H]) color("red") cylinder(h = cubeH, r1 = stopper_R_top, r2 = stopper_R_top, center = false,$fn=60);
    
    //NEEDLE CANNAL    
    translate([0,0,-1]) color("green") cylinder(h = cubeH, r1 = stopper_lip_R, r2 = stopper_lip_R, center = false,$fn=60);
    
    //SEE INSIDE - MIUSt BE COMMENTED OUT!!!
//     translate([0,-(cubeL/2+1),cubeH/2]) color("yellow") cube([cubeW+2,cubeL+2,cubeH+2],true,$fn=60);  

} // "TOP difference" ends