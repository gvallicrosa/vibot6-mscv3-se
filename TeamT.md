

# Objectives #


# Members #
| **Name**  | **Role** |
|:----------|:---------|
| Zhongyang Liu | Manager Member |
| Saurabh Jain | Member |
| Shreyansh Jain |  Member |
| Raquel Gil | Member |

# Meetings #

**20 October**

1.1 Block is currently implemented in MATLAB, we have to implement it complete in C++.

1.2 Team decided to make LLD of the basic functionalities of the block first and then we will work on possible improvements like occlusion issue..

1.3 KT is planned on 22nd Oct.

1.4 Saurabh and Raquel are going to share KT on all the concepts related to Geilis Curves, rotational offsets.

**24 October**

2.1 Cause sometimes the first minimum theta doesn't work for the gielius curve, we need to use several minimum thetas, namely, passing thetas in an array.

2.2 Talked about creating a class which has the similar writing for pointers， functions, etc.

2.3 Raquel will send us the mathematical & complicated(not for her -.-) notes about rotational offset.

2.4 Next meeting we will make sure how our function(and class) should be like.

**1 November**

3.1 Discuss about the members and functions of our class.

3.2 Shreyansh explained us the importance of an abstract class for the interface functions between classes.

3.3 Next task will be implement the Rotational Offset function in Matlab.

**6 November**

To do:

---

1. Each team member will prepare the code with the guidelines given in LLD.

2. Shreyansh will send a mail about the naming conventions of the local variables to be followed.

3. The dead-line to finish the coding activity by all the members is 21st Nov’2011.

**22 November**

C++ code is ready. Team will proceed with Matlab coding.


# Questions #
| | **Question** | **Answer** |
|:|:-------------|:-----------|
|1 | What is rotational offset ? | Angle required so that the contour gets aligned to the Gielis curve before matching starts. |
|2 | Why rotational offset is required ? | The rotational offset is a very sensitive parameter for Gielis curves recovery. In other words, if the initial rotational offset is not correct, the minimization routine might strongly converge to local minimum. |
|3 | How to get the rotational offset? | Given the contour points of the figure: 1. Change to polar coordinates: (x,y)->(r,theta) 2. Sort (r,theta) points by the angle theta from [0, 2pi) 3. Get the minimum radius of the sorted points by comparing the two previous and the two next points. |


# Activity #

[LLD RotationalOffset](https://docs.google.com/viewer?a=v&pid=explorer&chrome=true&srcid=0B5di_0iaJKEVNzU4NWM3ZjQtYjE5OS00MWMyLThiYjgtMTAwODM5YzljY2Uz&hl=en_US)



# Issues #
[(Issue 6)](http://code.google.com/p/vibot6-mscv3-se/issues/detail?id=6)

# References #