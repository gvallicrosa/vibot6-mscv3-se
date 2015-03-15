


# Objectives #
To "Ramp Up" the requirements of point 5.2 of the Project's Requirements. This point, 5.2, corresponds to the postprocessing of the segmented image.

The team will go into a deeper level pf detail regarding this requirement.

# Members #
| **Name** | **Main Topic** | **Role** |
|:---------|:---------------|:---------|
| Hamed Mohammadbagher |  | Team Member|
| Joel Vidal |  | Team Member |
| Igor Jovancevic |  | Team Member |
| Federico Camposeco |  | Team Leader |
| Eduardo Tusa |  | Manager |


# Description #
This group is responsible of reading and understanding Post-processing. It involves noise removal, object elimination and recovery of deformed road sign. (Corresponding to section 4.1 of Valentine thesis.)

# Meetings #

## October 10 ##

A task list was created and assigned as follow:

Noise Removal
(see image.cleaning.m  and imagecleaning2.m)
Median filter (Hamed)
Mathematical Morphology (Igor and Joel)

Object Elimination (Eduardo)
(see elimination.m)

Recovery of Deformed Road Sign (Federico)
(see complete\_blob.m and white\_convex\_points.m)

Questions about code programming were sent to the members of Group O, particularly; to Corina. Additionally, the main assignment for the next meeting is to do a research on each of our individual tasks which were established previously.

## October 14 ##

Questions were clarified through emails by Corina and Nolang. These answers were shared with the rest of the group. The commands used in MATLAB for noise removal and mathematical morphology were explained briefly.

The content of our presentation such as explanations, illustrations, examples; were discussed. During the next meeting, each member will present the assigned task.

## October 17 ##

Each member presented his assigned task. Comments and hesitations on each presentation were discussed in order to improve the explanations about Noise Removal and Object Elimination. The presentation on Recovery of Deformed Road Sign presented very illustrative definitions.

By another hand, each member will send his final slides in order to delineate the final presentation. The presence of code in the final presentation will be avoided. The illustrative examples will have more priority.



# Questions #
| | **Question** | **Answer** |
|:|:-------------|:-----------|
|1 | How is the noise removed in the binary images?|A median filter and a morphological "close" operation is applied|
|2 | What are the two methods applied for "Object Elimination"?|Ratio of the region and area of the region|
|3 | What is the input and output of a convex hull algorithm|Input: binary image or set of coordinates. Output: Coordinates of the points forming the outmost convex polygon of the input.|