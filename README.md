# Lab5_industrial_robotic_2
# Authors

- Javier Caicedo Pedrozo
- Diego Chacón
- Alejandro Triana

## Digital input handling in RobotStudio

One of the most important functions when controlling industrial manipulators is the manipulation of digital inputs and outputs, since it is possible to chain a sequence of manipulator actions by identifying the current state of a particular digital input or output. 
In this laboratory, we are concerned with monitoring two of the digital inputs created in the controller through a program defined in a RAPID module to choose between two subroutines, the first one allows to represent the letters of the initials of the names of the members of the group on the horizontal plane and the second one allows to execute the same task on an inclined plane at 30°.

## Creating a digital input in the Teach Pendant

## Creating a digital input in RobotStudio

## Defining the RAPID module

In the first section of our code we define the parameters that we will use in our routines, that is, the definition of the home position, as well as the points that conform the different trajectories that allow us to define the letters, in the same way, we define the user's coordinate system.

Then we define the procedure routines that will allow us to join through the movement commands, <b>MOVJ</b>, <b>MOVC</b> and <b>MOVL</b> the points that make up the trajectories of each of the letters we want to represent.

Then we define the <b>pathJSD()</b> routine in which we define the complete sequence to represent the whole set of letters of interest.
Then we define the tool's toolData object, which in our case is designated with the variable <b>toolJSD</b>, in the same way we define two workobject objects designated with the names <b>Lineal</b> and <b>Rotate</b>, which will allow us to change the current workobject to adjust the frame of reference with respect to which we will implement our two main routines, in this way the <b>Lineal</b> workobject, will allow us to represent the letters on the horizontal plane, and the <b>Rotate</b> will allow us to execute the same sequence of letters on a plane inclined at 30° with respect to the horizontal.

Finally we define our main block, where we establish a While cycle that allows us to permanently monitor the state of the digital inputs, inside this we establish two conditionals that will allow us to choose between the representation routine in the horizontal plane and the representation routine in the inclined plane, if the digital input DI_01 or DI_02 go to state 1 respectively.

## Implementation in RobotStudio of the routines controlled by the digital inputs.

The RAPID module developed to meet the requirements of the robot was tested in the RobotStudio environment obtaining the performance shown in the link below.

## Physical implementation of routines controlled by digital inputs

The physical implementation of the elaborated RAPID module was executed on the ABB IRB140 robot, the performance in the execution of the routines can be seen in the link below.


## Conclusions






