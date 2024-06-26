# MultiMaterial UnitCell 3D Plate Lattices
The following folder contains the necessary files used in creating 3D plate lattices based off the paper "3D Plate-Lattices: An Emerging Class of Low-Density Metamaterial Exhibiting Optimal Isotropic Stiffness" for 3D printing with OpenSCAD. 

The following structures are used and named within the 'Structures.scad' file:
* BCC
* SC
* FCC
* SC-FCC
* SC-BCC 
* SC-BCC-FCC
* SC-BCC(frag)
* BCC-SC(frag)
* SC-FCC(frag)
* FCC-SC(frag)
    
# Runnning Structures.scad in terminal
-Open to the directory containing both 'Structures.scad' and 'Structures.json and run the follwoing  command:
```
openscad -D 'cube_size=#' -D 'thickness_of_plate=#' -D 'generate="______"' -o Testmodel.stl Structures.scad
```
with your desired dimensions where and output:
* "cube_size" defines a cubic space(mm^3) in which the lattice will occupy given one length
* "thickness_of_plate" defines the height(mm) of the plates utilized in the plate lattice
* "generate": the type of plate lattice structure to generate
* TestModel.stl: The name of the output model

# Running Structures.scad in OpenSCAD
The top of the "Structures.scad" file contains three modifiable variables: cube_size, thickness_of_plate, and generate.The variables do the follwoing: 
* cube_size: define a cubic space(mm) in which the lattice will occupy with one length
* thickness_of_plate: define the height(mm) of the plates utilized in the lattice
* generate: the type of plate lattice structure to generate

Alternatively, the 'Structures.json' file can be accessed via the Customizer window if both 'Structures.json' and 'Structures.scad' are in the same directory. The default customizer generation of 'Structures.scad' may generate the varables, however, there have been instances where only the structures variable is generated.


# Utilizing the 3DPLS Library
The 3DPLS folder contains an scad script containing the plate lattice structures available in the Structures.scad file in a format that is accesible through an Openscad library utilizing the same parameters of the side length of a cubic volume and the thickness of the plates. The library can be installed by moving the 3DPLS folder into the libraries directory that is present within the OpenSCAD installation.

To call the library, the following line must be included:
```
include<3DPLS/3DPLS.scad>
```

For additional help regarding the installation of the library, feel free to drop your concerns in "Issues" section of the GitHub repository. In addition, the [OpenSCAD User Manual page on libraries](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Libraries) can help. 
