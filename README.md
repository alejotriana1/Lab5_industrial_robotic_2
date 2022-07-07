# Lab5_industrial_robotic_2
# Authors

- Javier Caicedo Pedrozo
- Diego Chacón
- Alejandro Triana

## Digital input handling in RobotStudio

One of the most important functions when controlling industrial manipulators is the manipulation of digital inputs and outputs, since it is possible to chain a sequence of manipulator actions by identifying the current state of a particular digital input or output. 
In this laboratory, we are concerned with monitoring two of the digital inputs created in the controller through a program defined in a RAPID module to choose between two subroutines, the first one allows to represent the letters of the initials of the names of the members of the group on the horizontal plane and the second one allows to execute the same task on an inclined plane at 30°.

## Creating a digital input in the Teach Pendant

To create a digital input through the Flex Pendant, we must go to the main menu, pressing the fraction of the screen with the letters ABB in the upper left corner, at this point, we will see the menu below, so we will select the Inputs and Outputs option.


<p align="center"><img src="https://i.postimg.cc/C1SMkf4w/screen1-rob.png"</p>

Then we will find a screen showing inputs, outputs and signals that we have created so far, here we will click on the part of the screen containing the word <b>view</b> in the lower right corner and select the option <b>Digital Inputs</b>.

<p align="center"><img src="https://i.postimg.cc/7PXh1Xcd/screen-2-rob.png"</p>

In this new screen we can create the required inputs, in this case, we can see that the digital input DI_01 has already been created.

<p align="center"><img src="https://i.postimg.cc/CL11ckp1/screen-3-rob.png"</p>

## Creating a digital input in RobotStudio

In RobotStudio to create a digital input we must go to the "Controller" menu in the ribbon at the top, then, in the left menu select the "I/O System" option, then in the right section right click on the "Signal" option and select the "New Signal" button, after this a window will be displayed where we can define several attributes of the created Signal, for example, name, type of signal, among others.

The above procedure is shown in the image below.

<p align="center"><img src="https://i.postimg.cc/26Gkw8Hh/screen-4-rob.png"</p>

## Defining the RAPID module

In the first section of our code we define the parameters that we will use in our routines, that is, the definition of the home position, as well as the points that conform the different trajectories that allow us to define the letters, in the same way, we define the user's coordinate system.

<p align="center"><img src="https://i.postimg.cc/sx2V0d88/code-1-rob.png"</p>

Then we define the procedure routines that will allow us to join through the movement commands, <b>MOVJ</b>, <b>MOVC</b> and <b>MOVL</b> the points that make up the trajectories of each of the letters we want to represent.

<p align="center"><img src="https://i.postimg.cc/cLtJSWHG/code-2-rob.png"</p>


Then we define the <b>pathJSD()</b> routine in which we define the complete sequence to represent the whole set of letters of interest.
Then we define the tool's toolData object, which in our case is designated with the variable <b>toolJSD</b>, in the same way we define two workobject objects designated with the names <b>Lineal</b> and <b>Rotate</b>, which will allow us to change the current workobject to adjust the frame of reference with respect to which we will implement our two main routines, in this way the <b>Lineal</b> workobject, will allow us to represent the letters on the horizontal plane, and the <b>Rotate</b> will allow us to execute the same sequence of letters on a plane inclined at 30° with respect to the horizontal.

<p align="center"><img src="https://i.postimg.cc/BQVvkbJC/code-3-rob.png"</p>

<p align="center"><img src="https://i.postimg.cc/6Qd58hnH/code-4-rob.png"</p>


Finally we define our main block, where we establish a While cycle that allows us to permanently monitor the state of the digital inputs, inside this we establish two conditionals that will allow us to choose between the representation routine in the horizontal plane and the representation routine in the inclined plane, if the digital input DI_01 or DI_02 go to state 1 respectively.

<p align="center"><img src="https://i.postimg.cc/PqG5f7pp/code-5-rob.png"</p>

## Implementation in RobotStudio of the routines controlled by the digital inputs.

The RAPID module developed to meet the requirements of the robot was tested in the RobotStudio environment obtaining the performance shown in the link below.

https://youtu.be/hR_wtv2g4vk

## Physical implementation of routines controlled by digital inputs

The physical implementation of the elaborated RAPID module was executed on the ABB IRB140 robot, the performance in the execution of the routines can be seen in the link below.

https://youtu.be/hR_wtv2g4vk


## Conclusions

- Conditional cycles and loops in RAPID modules are very useful when handling digital inputs, since these are generally associated to external events, that is, actions outside the instructions contemplated in the module that act as triggers of different instructions in the program, a situation that could not be achieved, or at least not in a simple way, without the implementation of this type of programming structures.

- Digital inputs can be very useful, for example, to trigger emergency routines, when they are associated to stop buttons, or to execute sequential routines that require external monitoring and supervision by an operator.






