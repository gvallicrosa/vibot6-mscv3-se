

# Objectives #
The team has to create the low level design for the Post Processing part of the project

# Members #
| **Name** | **Role** |
|:---------|:---------|
| Corina Barbalata | Member |
| Eduardo Tusa | Member |
| Federico Camposeco Paulsen | Member |
| Joel Vidal | Manager Member |

# Meetings #

In this meeting the task were distributed. The functions that have to be used in Matlab and C++ were discussed. Understanding of the Case Diagram.

[Meeting 20/10/2011](https://docs.google.com/document/d/1IeFFsb09k3OWMXNwmtDbBp3NveJrCXTZ4h1nT3wJASw/edit?hl=en_US)

[Meeting 09/11/2011](https://docs.google.com/document/d/1DfupMQrhH1pFDWachyRRaj-hNjvgZdNR0PVDlWiQNI0/edit?hl=en_US)

[Meeting 02/12/2011](https://docs.google.com/document/d/1jpPrHnNqpgG43ZYYgFbhM4U6ASaGeJZMQJlmS0648A4/edit?hl=en_US)

[Meeting 09/12/2011](https://docs.google.com/document/d/1k5iB21U8zhauWRjK3gFATenoYGUTJyEOefBD8zfulME/edit?hl=en_US)



# Activity #

The Post-Processing team had as main task the realization of the pseudo-code for the Noise Removal (using Median Filter and Morphological Operations), Recovery of the deformed sign and Object Elimination.

[LLD for PostProcessing](https://docs.google.com/document/d/1reYNrlv_c6SvIAcoSZZ69ng32V47OgFE7YfBMVPp0rw/edit?hl=en_US)

[C++ code](http://code.google.com/p/vibot6-mscv3-se/source/browse/#svn%2Ftrunk%2Fproject%2Fc%2B%2B%2Fpost_processing)

[Matlab code](http://code.google.com/p/vibot6-mscv3-se/source/browse/trunk/project/matlab/Postprocessing.m)

[PostProcessing Documentation](https://docs.google.com/document/d/1QMbnnJEnIBXcTg78x7h28869rb78ehDVZD5U2ZavITU/edit?hl=en_US)


# Questions #
| | **Question** | **Answer** |
|:|:-------------|:-----------|
|1 | What is the purpose of post processing? | To remove artifacts in the image that we know in advance that cannot be road signs. |
|2 | What is the strategy of noise removal? | Morphological filtering and using the median filter|
|3 | Why is a convex hull algorithm performed? | To extract an approximate convex polygon from the segmented section. We know that all road signs are convex polygons.|

# References #

[Convertion of binary images in Matlab](http://www.mathworks.com/help/toolbox/images/ref/im2bw.html)

[Labeling in Matlab](http://www.mathworks.com/help/toolbox/images/ref/bwlabel.html)

[Labeling in OpenCV](http://opencv.willowgarage.com/documentation/cpp/imgproc_structural_analysis_and_shape_descriptors.html#cv-findcontours)

[Properties of image regions](http://www.mathworks.com/help/toolbox/images/ref/regionprops.html)

[Case Diagrams](http://en.wikipedia.org/wiki/Use_case_diagram)