

# Objectives #
Contour extraction of the meaningful points near the convex hull.

# Members #
| **Name** | **Role** |
|:---------|:---------|
| Guillem Vallicrosa  | Member |
| Igor Jovancevic | Member |
| Jorge Zavala | Member |
| Marc Barnada | Member |
| Muhammed Safiul Azam | Manager |

# Meetings #

[21 October](https://docs.google.com/document/d/1-M4Jx_8I7XWEmOMA440fEiMM5qFQUK_IO3jYabOEHjU/edit?hl=en_US)

Discussion about what to do and explanation to all group. Division of tasks.

# Activity #

[Contour extraction](https://docs.google.com/document/d/1pl-tXTchtpWfqZ8kL80DD8PHROo-VLOiNzv9GeaX3yI/edit?hl=en_US) - Document explaining how it works, with examples.

# Questions / Answers #

| **Question** | **Answer** |
|:-------------|:-----------|
| What is the meaning of contour extraction in our project? | Extract the meaningful points of the previously segmented region. A point is considered meaningful if it is near (with some threshold) the convex hull polygon that encloses the region. |
| Why we have reprogrammed the contour extraction function from Matlab? | Because the original function implemented by Valentine was only "trying" to check if the interpolated convex\_hull points belonged to the polygon of convex\_hull points, also the computed results were not very good and had to be improved with contour smoothing techniques, among other problems. But in our implementation we consider all the contour points that are close (using a distance threshold) to the edges of convex hull points, and we don't need to do contour smoothing. |
| What is the main advantage of new method proposed by group R? | We only work with the original contour points to improve the performance of the curve fitting part, this means that there is not any interpolation neither contour smoothing. We don't "make up" points. |

# Issues #
[(Issue 9)](http://code.google.com/p/vibot6-mscv3-se/issues/detail?id=9)

# References #