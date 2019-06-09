// Persistence of Vision Ray Tracer Scene Description File
// for FreeCAD (http://www.freecadweb.org)

#version 3.6;

#include "colors.inc"
#include "metals.inc"

// ----------------------------------------

global_settings {
    assumed_gamma 1.0
    ambient_light color rgb <1.0,1.0,1.0>
    max_trace_level 20
}  

// ----------------------------------------


sky_sphere {
  pigment {
    gradient y
    color_map {
      [0.0 rgb <0.6,0.7,1.0>]
      [0.7 rgb <0.0,0.1,0.8>]
    }
  }
}


// ----------------------------------------

plane {
  y, -1
  texture { pigment {rgb <0.0,0.0,0.0>} finish {ambient 0.0 reflection 0.05 specular 0.0} }
}

// Standard finish
//#declare StdFinish = F_MetalA;
//#declare StdFinish = finish { diffuse 0.7 };
//#declare StdFinish = finish { phong 0.5 };
//#declare StdFinish = finish { ambient rgb <0.5,0.5,0.5> };
//#declare StdFinish = finish { crand 0.5 phong 0.9};
#declare StdFinish = finish { ambient 0.01 diffuse 0.9 phong 1.0 phong_size 70 metallic brilliance 1.5} ;

// declares position and view direction

// Generated by FreeCAD (http://www.freecadweb.org/)
#declare cam_location =  <1.01583,1.05553,-0.922645>;
#declare cam_look_at  = <0.0304624,0.0701694,0.0627185>;
#declare cam_sky      = <-0.408248,0.816497,0.408248>;
#declare cam_angle    = 45; 
camera {
  location  cam_location
  look_at   cam_look_at
  sky       cam_sky
  angle     cam_angle 
  right x*800/600
}
// Written by FreeCAD http://www.freecadweb.org/
// face number1 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone1 = mesh2{
  vertex_vectors {
    4,
    <-0.46,0.04,-0.24>,
    <-0.46,0.24,-0.24>,
    <-0.46,0.24,0.24>,
    <-0.46,0.04,0.24>,
  }
  normal_vectors {
    4,
    <-1,0,-0>,
    <-1,0,-0>,
    <-1,0,-0>,
    <-1,0,-0>,
  }
  face_indices {
    2,
    <3,2,1>,
    <0,3,1>,
  }
} // end of Face1

// face number2 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone2 = mesh2{
  vertex_vectors {
    4,
    <0.46,0.04,-0.24>,
    <0.46,0.24,-0.24>,
    <0.46,0.24,0.24>,
    <0.46,0.04,0.24>,
  }
  normal_vectors {
    4,
    <1,-0,0>,
    <1,-0,0>,
    <1,-0,0>,
    <1,-0,0>,
  }
  face_indices {
    2,
    <1,2,3>,
    <1,3,0>,
  }
} // end of Face2

// face number3 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone3 = mesh2{
  vertex_vectors {
    4,
    <-0.46,0.04,-0.24>,
    <0.46,0.04,-0.24>,
    <0.46,0.24,-0.24>,
    <-0.46,0.24,-0.24>,
  }
  normal_vectors {
    4,
    <-0,-0,-1>,
    <-0,-0,-1>,
    <-0,-0,-1>,
    <-0,-0,-1>,
  }
  face_indices {
    2,
    <1,0,2>,
    <0,3,2>,
  }
} // end of Face3

// face number4 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone4 = mesh2{
  vertex_vectors {
    4,
    <-0.46,0.04,0.24>,
    <0.46,0.04,0.24>,
    <0.46,0.24,0.24>,
    <-0.46,0.24,0.24>,
  }
  normal_vectors {
    4,
    <0,0,1>,
    <0,0,1>,
    <0,0,1>,
    <0,0,1>,
  }
  face_indices {
    2,
    <2,0,1>,
    <2,3,0>,
  }
} // end of Face4

// face number5 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone5 = mesh2{
  vertex_vectors {
    4,
    <-0.46,0.04,-0.24>,
    <-0.46,0.04,0.24>,
    <0.46,0.04,0.24>,
    <0.46,0.04,-0.24>,
  }
  normal_vectors {
    4,
    <-0,-1,-0>,
    <-0,-1,-0>,
    <-0,-1,-0>,
    <-0,-1,-0>,
  }
  face_indices {
    2,
    <1,0,2>,
    <0,3,2>,
  }
} // end of Face5

// face number6 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone6 = mesh2{
  vertex_vectors {
    4,
    <-0.46,0.24,-0.24>,
    <-0.46,0.24,0.24>,
    <0.46,0.24,0.24>,
    <0.46,0.24,-0.24>,
  }
  normal_vectors {
    4,
    <0,1,0>,
    <0,1,0>,
    <0,1,0>,
    <0,1,0>,
  }
  face_indices {
    2,
    <2,0,1>,
    <2,3,0>,
  }
} // end of Face6



// Declare all together +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone = union {
mesh2{ Clone1}
mesh2{ Clone2}
mesh2{ Clone3}
mesh2{ Clone4}
mesh2{ Clone5}
mesh2{ Clone6}
}
// instance to render
object {Clone
  texture {
      pigment {color rgb <0.580392,0.580392,0.580392>}
      finish {StdFinish } //definition on top of the project
  }
}
// Written by FreeCAD http://www.freecadweb.org/
// face number1 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0011 = mesh2{
  vertex_vectors {
    4,
    <0.3,-5.55112e-17,0.25>,
    <0.3,5.55112e-17,-0.25>,
    <0.5,-5.55112e-17,0.25>,
    <0.5,5.55112e-17,-0.25>,
  }
  normal_vectors {
    4,
    <0,-1,-4.42045e-16>,
    <0,-1,-4.42045e-16>,
    <0,-1,-4.42045e-16>,
    <0,-1,-4.42045e-16>,
  }
  face_indices {
    2,
    <0,1,2>,
    <1,3,2>,
  }
} // end of Face1

// face number2 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0012 = mesh2{
  vertex_vectors {
    4,
    <0.5,-5.55112e-17,0.25>,
    <0.5,5.55112e-17,-0.25>,
    <0.5,0.28,0.25>,
    <0.5,0.28,-0.25>,
  }
  normal_vectors {
    4,
    <1,-0,-0>,
    <1,-0,-0>,
    <1,-0,-0>,
    <1,-0,-0>,
  }
  face_indices {
    2,
    <0,1,2>,
    <1,3,2>,
  }
} // end of Face2

// face number3 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0013 = mesh2{
  vertex_vectors {
    4,
    <0.5,0.28,0.25>,
    <0.5,0.28,-0.25>,
    <0.3,0.28,0.25>,
    <0.3,0.28,-0.25>,
  }
  normal_vectors {
    4,
    <0,1,4.42045e-16>,
    <0,1,4.42045e-16>,
    <0,1,4.42045e-16>,
    <0,1,4.42045e-16>,
  }
  face_indices {
    2,
    <0,1,2>,
    <1,3,2>,
  }
} // end of Face3

// face number4 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0014 = mesh2{
  vertex_vectors {
    4,
    <0.3,0.28,0.25>,
    <0.3,0.28,-0.25>,
    <0.3,0.24,0.25>,
    <0.3,0.24,-0.25>,
  }
  normal_vectors {
    4,
    <-1,-0,-0>,
    <-1,-0,-0>,
    <-1,-0,-0>,
    <-1,-0,-0>,
  }
  face_indices {
    2,
    <0,1,2>,
    <1,3,2>,
  }
} // end of Face4

// face number5 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0015 = mesh2{
  vertex_vectors {
    4,
    <0.3,0.24,0.25>,
    <0.3,0.24,-0.25>,
    <0.46,0.24,0.25>,
    <0.46,0.24,-0.25>,
  }
  normal_vectors {
    4,
    <0,-1,-4.42045e-16>,
    <0,-1,-4.42045e-16>,
    <0,-1,-4.42045e-16>,
    <0,-1,-4.42045e-16>,
  }
  face_indices {
    2,
    <0,1,2>,
    <1,3,2>,
  }
} // end of Face5

// face number6 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0016 = mesh2{
  vertex_vectors {
    4,
    <0.46,0.24,0.25>,
    <0.46,0.24,-0.25>,
    <0.46,0.04,0.25>,
    <0.46,0.04,-0.25>,
  }
  normal_vectors {
    4,
    <-1,-0,-0>,
    <-1,-0,-0>,
    <-1,-0,-0>,
    <-1,-0,-0>,
  }
  face_indices {
    2,
    <0,1,2>,
    <1,3,2>,
  }
} // end of Face6

// face number7 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0017 = mesh2{
  vertex_vectors {
    4,
    <0.46,0.04,0.25>,
    <0.46,0.04,-0.25>,
    <0.3,0.04,0.25>,
    <0.3,0.04,-0.25>,
  }
  normal_vectors {
    4,
    <0,1,4.42045e-16>,
    <0,1,4.42045e-16>,
    <0,1,4.42045e-16>,
    <0,1,4.42045e-16>,
  }
  face_indices {
    2,
    <0,1,2>,
    <1,3,2>,
  }
} // end of Face7

// face number8 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0018 = mesh2{
  vertex_vectors {
    4,
    <0.3,0.04,0.25>,
    <0.3,0.04,-0.25>,
    <0.3,-5.55112e-17,0.25>,
    <0.3,5.55112e-17,-0.25>,
  }
  normal_vectors {
    4,
    <-1,-0,-0>,
    <-1,-0,-0>,
    <-1,-0,-0>,
    <-1,-0,-0>,
  }
  face_indices {
    2,
    <0,1,2>,
    <1,3,2>,
  }
} // end of Face8

// face number9 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0019 = mesh2{
  vertex_vectors {
    8,
    <0.3,-5.55112e-17,0.25>,
    <0.5,-5.55112e-17,0.25>,
    <0.5,0.28,0.25>,
    <0.3,0.28,0.25>,
    <0.3,0.24,0.25>,
    <0.46,0.24,0.25>,
    <0.46,0.04,0.25>,
    <0.3,0.04,0.25>,
  }
  normal_vectors {
    8,
    <0,-4.42045e-16,1>,
    <0,-4.42045e-16,1>,
    <0,-4.42045e-16,1>,
    <0,-4.42045e-16,1>,
    <0,-4.42045e-16,1>,
    <0,-4.42045e-16,1>,
    <0,-4.42045e-16,1>,
    <0,-4.42045e-16,1>,
  }
  face_indices {
    6,
    <6,0,1>,
    <6,7,0>,
    <5,3,4>,
    <2,5,6>,
    <2,6,1>,
    <2,3,5>,
  }
} // end of Face9

// face number10 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone00110 = mesh2{
  vertex_vectors {
    8,
    <0.3,5.55112e-17,-0.25>,
    <0.5,5.55112e-17,-0.25>,
    <0.5,0.28,-0.25>,
    <0.3,0.28,-0.25>,
    <0.3,0.24,-0.25>,
    <0.46,0.24,-0.25>,
    <0.46,0.04,-0.25>,
    <0.3,0.04,-0.25>,
  }
  normal_vectors {
    8,
    <-0,4.42045e-16,-1>,
    <-0,4.42045e-16,-1>,
    <-0,4.42045e-16,-1>,
    <-0,4.42045e-16,-1>,
    <-0,4.42045e-16,-1>,
    <-0,4.42045e-16,-1>,
    <-0,4.42045e-16,-1>,
    <-0,4.42045e-16,-1>,
  }
  face_indices {
    6,
    <1,0,6>,
    <0,7,6>,
    <4,3,5>,
    <6,5,2>,
    <1,6,2>,
    <5,3,2>,
  }
} // end of Face10



// Declare all together +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone001 = union {
mesh2{ Clone0011}
mesh2{ Clone0012}
mesh2{ Clone0013}
mesh2{ Clone0014}
mesh2{ Clone0015}
mesh2{ Clone0016}
mesh2{ Clone0017}
mesh2{ Clone0018}
mesh2{ Clone0019}
mesh2{ Clone00110}
}
// instance to render
object {Clone001
  texture {
      pigment {color rgb <0.8,0.8,0.8>}
      finish {StdFinish } //definition on top of the project
  }
}
// Written by FreeCAD http://www.freecadweb.org/
// face number1 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0021 = mesh2{
  vertex_vectors {
    4,
    <-0.3,0.24,0.245>,
    <0.3,0.24,0.245>,
    <0.3,0.28,0.245>,
    <-0.3,0.28,0.245>,
  }
  normal_vectors {
    4,
    <-0,1.07497e-11,1>,
    <-0,1.07497e-11,1>,
    <-0,1.07497e-11,1>,
    <-0,1.07497e-11,1>,
  }
  face_indices {
    2,
    <0,1,2>,
    <3,0,2>,
  }
} // end of Face1

// face number2 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0022 = mesh2{
  vertex_vectors {
    4,
    <0.3,0.24,0.245>,
    <0.3,0.24,-0.245>,
    <0.3,0.28,-0.245>,
    <0.3,0.28,0.245>,
  }
  normal_vectors {
    4,
    <1,9.75053e-12,0>,
    <1,9.75053e-12,0>,
    <1,9.75053e-12,0>,
    <1,9.75053e-12,0>,
  }
  face_indices {
    2,
    <0,1,2>,
    <3,0,2>,
  }
} // end of Face2

// face number3 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0023 = mesh2{
  vertex_vectors {
    4,
    <0.3,0.24,-0.245>,
    <-0.3,0.24,-0.245>,
    <-0.3,0.28,-0.245>,
    <0.3,0.28,-0.245>,
  }
  normal_vectors {
    4,
    <-0,-1.07497e-11,-1>,
    <-0,-1.07497e-11,-1>,
    <-0,-1.07497e-11,-1>,
    <-0,-1.07497e-11,-1>,
  }
  face_indices {
    2,
    <0,1,2>,
    <3,0,2>,
  }
} // end of Face3

// face number4 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0024 = mesh2{
  vertex_vectors {
    4,
    <-0.3,0.24,-0.245>,
    <-0.3,0.24,0.245>,
    <-0.3,0.28,0.245>,
    <-0.3,0.28,-0.245>,
  }
  normal_vectors {
    4,
    <-1,-9.75053e-12,0>,
    <-1,-9.75053e-12,0>,
    <-1,-9.75053e-12,0>,
    <-1,-9.75053e-12,0>,
  }
  face_indices {
    2,
    <0,1,2>,
    <3,0,2>,
  }
} // end of Face4

// face number5 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0025 = mesh2{
  vertex_vectors {
    4,
    <-0.3,0.28,0.245>,
    <0.3,0.28,0.245>,
    <0.288547,0.3,0.233547>,
    <-0.288453,0.3,0.233547>,
  }
  normal_vectors {
    4,
    <-0,0.496938,0.867786>,
    <-0,0.496938,0.867786>,
    <-0,0.496938,0.867786>,
    <-0,0.496938,0.867786>,
  }
  face_indices {
    2,
    <0,1,2>,
    <3,0,2>,
  }
} // end of Face5

// face number6 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0026 = mesh2{
  vertex_vectors {
    4,
    <0.3,0.28,0.245>,
    <0.3,0.28,-0.245>,
    <0.288547,0.3,-0.233453>,
    <0.288547,0.3,0.233547>,
  }
  normal_vectors {
    4,
    <0.867786,0.496938,0>,
    <0.867786,0.496938,0>,
    <0.867786,0.496938,0>,
    <0.867786,0.496938,0>,
  }
  face_indices {
    2,
    <0,1,2>,
    <3,0,2>,
  }
} // end of Face6

// face number7 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0027 = mesh2{
  vertex_vectors {
    4,
    <0.3,0.28,-0.245>,
    <-0.3,0.28,-0.245>,
    <-0.288453,0.3,-0.233453>,
    <0.288547,0.3,-0.233453>,
  }
  normal_vectors {
    4,
    <-0,0.5,-0.866025>,
    <-0,0.5,-0.866025>,
    <-0,0.5,-0.866025>,
    <-0,0.5,-0.866025>,
  }
  face_indices {
    2,
    <0,1,2>,
    <3,0,2>,
  }
} // end of Face7

// face number8 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0028 = mesh2{
  vertex_vectors {
    4,
    <-0.3,0.28,-0.245>,
    <-0.3,0.28,0.245>,
    <-0.288453,0.3,0.233547>,
    <-0.288453,0.3,-0.233453>,
  }
  normal_vectors {
    4,
    <-0.866025,0.5,-0>,
    <-0.866025,0.5,-0>,
    <-0.866025,0.5,-0>,
    <-0.866025,0.5,-0>,
  }
  face_indices {
    2,
    <0,1,2>,
    <3,0,2>,
  }
} // end of Face8

// face number9 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0029 = mesh2{
  vertex_vectors {
    4,
    <-0.3,0.24,0.245>,
    <0.3,0.24,0.245>,
    <0.3,0.24,-0.245>,
    <-0.3,0.24,-0.245>,
  }
  normal_vectors {
    4,
    <0,-1,-0>,
    <0,-1,-0>,
    <0,-1,-0>,
    <0,-1,-0>,
  }
  face_indices {
    2,
    <3,2,1>,
    <0,3,1>,
  }
} // end of Face9

// face number10 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone00210 = mesh2{
  vertex_vectors {
    4,
    <-0.288453,0.3,0.233547>,
    <0.288547,0.3,0.233547>,
    <0.288547,0.3,-0.233453>,
    <-0.288453,0.3,-0.233453>,
  }
  normal_vectors {
    4,
    <-0,1,0>,
    <-0,1,0>,
    <-0,1,0>,
    <-0,1,0>,
  }
  face_indices {
    2,
    <1,2,3>,
    <1,3,0>,
  }
} // end of Face10



// Declare all together +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone002 = union {
mesh2{ Clone0021}
mesh2{ Clone0022}
mesh2{ Clone0023}
mesh2{ Clone0024}
mesh2{ Clone0025}
mesh2{ Clone0026}
mesh2{ Clone0027}
mesh2{ Clone0028}
mesh2{ Clone0029}
mesh2{ Clone00210}
}
// instance to render
object {Clone002
  texture {
      pigment {color rgb <0.129412,0.129412,0.129412>}
      finish {StdFinish } //definition on top of the project
  }
}
// Written by FreeCAD http://www.freecadweb.org/
// face number1 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0031 = mesh2{
  vertex_vectors {
    4,
    <-0.3,0,0.25>,
    <-0.3,0,-0.25>,
    <-0.5,0,0.25>,
    <-0.5,0,-0.25>,
  }
  normal_vectors {
    4,
    <-0,-1,-4.4e-16>,
    <-0,-1,-4.4e-16>,
    <-0,-1,-4.4e-16>,
    <-0,-1,-4.4e-16>,
  }
  face_indices {
    2,
    <2,1,0>,
    <2,3,1>,
  }
} // end of Face1

// face number2 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0032 = mesh2{
  vertex_vectors {
    4,
    <-0.5,0,0.25>,
    <-0.5,0,-0.25>,
    <-0.5,0.28,0.25>,
    <-0.5,0.28,-0.25>,
  }
  normal_vectors {
    4,
    <-1,0,0>,
    <-1,0,0>,
    <-1,0,0>,
    <-1,0,0>,
  }
  face_indices {
    2,
    <2,1,0>,
    <2,3,1>,
  }
} // end of Face2

// face number3 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0033 = mesh2{
  vertex_vectors {
    4,
    <-0.5,0.28,0.25>,
    <-0.5,0.28,-0.25>,
    <-0.3,0.28,0.25>,
    <-0.3,0.28,-0.25>,
  }
  normal_vectors {
    4,
    <-0,1,4.4e-16>,
    <-0,1,4.4e-16>,
    <-0,1,4.4e-16>,
    <-0,1,4.4e-16>,
  }
  face_indices {
    2,
    <2,1,0>,
    <2,3,1>,
  }
} // end of Face3

// face number4 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0034 = mesh2{
  vertex_vectors {
    4,
    <-0.3,0.28,0.25>,
    <-0.3,0.28,-0.25>,
    <-0.3,0.24,0.25>,
    <-0.3,0.24,-0.25>,
  }
  normal_vectors {
    4,
    <1,0,0>,
    <1,0,0>,
    <1,0,0>,
    <1,0,0>,
  }
  face_indices {
    2,
    <2,1,0>,
    <2,3,1>,
  }
} // end of Face4

// face number5 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0035 = mesh2{
  vertex_vectors {
    4,
    <-0.3,0.24,0.25>,
    <-0.3,0.24,-0.25>,
    <-0.46,0.24,0.25>,
    <-0.46,0.24,-0.25>,
  }
  normal_vectors {
    4,
    <-0,-1,-4.4e-16>,
    <-0,-1,-4.4e-16>,
    <-0,-1,-4.4e-16>,
    <-0,-1,-4.4e-16>,
  }
  face_indices {
    2,
    <2,1,0>,
    <2,3,1>,
  }
} // end of Face5

// face number6 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0036 = mesh2{
  vertex_vectors {
    4,
    <-0.46,0.24,0.25>,
    <-0.46,0.24,-0.25>,
    <-0.46,0.04,0.25>,
    <-0.46,0.04,-0.25>,
  }
  normal_vectors {
    4,
    <1,0,0>,
    <1,0,0>,
    <1,0,0>,
    <1,0,0>,
  }
  face_indices {
    2,
    <2,1,0>,
    <2,3,1>,
  }
} // end of Face6

// face number7 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0037 = mesh2{
  vertex_vectors {
    4,
    <-0.46,0.04,0.25>,
    <-0.46,0.04,-0.25>,
    <-0.3,0.04,0.25>,
    <-0.3,0.04,-0.25>,
  }
  normal_vectors {
    4,
    <-0,1,4.4e-16>,
    <-0,1,4.4e-16>,
    <-0,1,4.4e-16>,
    <-0,1,4.4e-16>,
  }
  face_indices {
    2,
    <2,1,0>,
    <2,3,1>,
  }
} // end of Face7

// face number8 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0038 = mesh2{
  vertex_vectors {
    4,
    <-0.3,0.04,0.25>,
    <-0.3,0.04,-0.25>,
    <-0.3,0,0.25>,
    <-0.3,0,-0.25>,
  }
  normal_vectors {
    4,
    <1,0,0>,
    <1,0,0>,
    <1,0,0>,
    <1,0,0>,
  }
  face_indices {
    2,
    <2,1,0>,
    <2,3,1>,
  }
} // end of Face8

// face number9 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone0039 = mesh2{
  vertex_vectors {
    8,
    <-0.3,0,0.25>,
    <-0.5,0,0.25>,
    <-0.5,0.28,0.25>,
    <-0.3,0.28,0.25>,
    <-0.3,0.24,0.25>,
    <-0.46,0.24,0.25>,
    <-0.46,0.04,0.25>,
    <-0.3,0.04,0.25>,
  }
  normal_vectors {
    8,
    <-0,-4.4e-16,1>,
    <-0,-4.4e-16,1>,
    <-0,-4.4e-16,1>,
    <-0,-4.4e-16,1>,
    <-0,-4.4e-16,1>,
    <-0,-4.4e-16,1>,
    <-0,-4.4e-16,1>,
    <-0,-4.4e-16,1>,
  }
  face_indices {
    6,
    <0,7,6>,
    <0,6,1>,
    <4,3,5>,
    <6,5,2>,
    <1,6,2>,
    <5,3,2>,
  }
} // end of Face9

// face number10 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone00310 = mesh2{
  vertex_vectors {
    8,
    <-0.3,0,-0.25>,
    <-0.5,0,-0.25>,
    <-0.5,0.28,-0.25>,
    <-0.3,0.28,-0.25>,
    <-0.3,0.24,-0.25>,
    <-0.46,0.24,-0.25>,
    <-0.46,0.04,-0.25>,
    <-0.3,0.04,-0.25>,
  }
  normal_vectors {
    8,
    <0,4.4e-16,-1>,
    <0,4.4e-16,-1>,
    <0,4.4e-16,-1>,
    <0,4.4e-16,-1>,
    <0,4.4e-16,-1>,
    <0,4.4e-16,-1>,
    <0,4.4e-16,-1>,
    <0,4.4e-16,-1>,
  }
  face_indices {
    6,
    <6,7,0>,
    <1,6,0>,
    <5,3,4>,
    <2,5,6>,
    <2,6,1>,
    <2,3,5>,
  }
} // end of Face10



// Declare all together +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#declare Clone003 = union {
mesh2{ Clone0031}
mesh2{ Clone0032}
mesh2{ Clone0033}
mesh2{ Clone0034}
mesh2{ Clone0035}
mesh2{ Clone0036}
mesh2{ Clone0037}
mesh2{ Clone0038}
mesh2{ Clone0039}
mesh2{ Clone00310}
}
// instance to render
object {Clone003
  texture {
      pigment {color rgb <0.8,0.8,0.8>}
      finish {StdFinish } //definition on top of the project
  }
}


//default light
light_source {
  cam_location + cam_angle * 100
  color rgb <10, 10, 10>
}

