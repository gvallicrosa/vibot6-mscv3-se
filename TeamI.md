

# Task #
RampUP Req. Doc. 5.3

# Objective #
### Contour Extraction ###
_Polynomial Interpolation - Polynomial Interpolation is used to interpolate the extreme points resulting from the Convex-Hull algorithm_

# Members #
| **Name** | **Role** |
|:---------|:---------|
| Igor Jovancevic | Team Manager |
| Joel Vidal | Technical Lead |
| Lijia Gao | Member |
| Marc Barnada Rius | Member |
| Muhammed Safiul Azam | Member |
| Jorge Zavala | Member |

# Meeting logs #

[11. October](https://docs.google.com/document/d/13mIVdMr-Mcg1-o_tgiGko6OavCCrxvRgXEGLXJq3RpU/edit?hl=en_US)

Team discussed overall idea of Polynomial interpolation and whole post-processing phase. Matlab code related to the topic is gone through. Since work cannot be divided, all members agreed that everyone should try to understand as much as possible from this phase (theoretical background as well as Matlab code) before next meeting.
Some doubts encountered with linear algebra part covered within the thesis. Help will be requested from Yohan or Desire.


[17. October](https://docs.google.com/document/d/11XvUWC0iBB2LqbySCe5dFtVMEQ21f5PUIIWJyHJeIkU/edit?hl=en_US)

We all agreed that what is done in Matlab code is not what is explained in the thesis. Presentation is almost finished. Draft version is waiting for approval of all members of the group.
We are informed by the team L (Task: Retrieval of rotational offset) that Polynomial interpolation is not needed for the process. Since it can be skipped as a step, we are focusing on explaining why it was important and why it is skipped and we count on help of group L on that.  However, we are not 100% sure what is our role in presenting since decision about removing was done without us.


# Questions #
| | **Question** | **Answer** |
|:|:-------------|:-----------|
|1 | What was the goal of polynomial interpolation? | Obtain additional contour points besides extreme points from Convex Hull. |
|2 | Why was decided that this phase is not needed? | Doesn't give enough correct values. Causes problems in obtaining rotational offset phase. Produces outliers. |
|3 | What is the main advantage of new method proposed by TeamR? | We only work with the **original** contour points to improve the performance of the curve fitting part, this means that there is not any interpolation neither contour smoothing. We don't "make up" points.|