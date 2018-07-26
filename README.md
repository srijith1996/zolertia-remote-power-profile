Energy Profiling for RE-Mote platform
=====================================

This project aims at finding the energy usage of Zolertia Re-MOTE. Please check the procedure.txt file for more info on how the readings were taken.

Directory structure
-------------------

- data 		 - contains the data and measurements collected from the lab
- plots 	 - contains some sample plots of the data
- pltscripts - contains octave scripts for plotting and some matrices for easing the task

- PROCEDURE.md - Procedure for using current probe and the contiki code for computing 
				 current consumption.
- README.md	   - [This file]
- readings.txt - some basic readings (contains details on how to interpret the data as well)



Energy profiling for RE-Mote Rev A and B boards
-----------------------------------------------


|          REV A         |  Radio  OFF |  Radio Duty  cycled |  Radio ON |  Sensor Connected |
|:----------------------:|:-----------:|:-------------------:|:---------:|:-----------------:|
|  Current Consumed (mA) |    12.23    |         4.52        |   30.08   |        13.15      |

|          REV B         |  Radio  OFF |  Radio Duty  cycled |  Radio ON |  Sensor Connected |
|:----------------------:|:-----------:|:-------------------:|:---------:|:-----------------:|
|  Current Consumed (mA) |    11.64    |         3.09        |   29.71   |       12.62       |


