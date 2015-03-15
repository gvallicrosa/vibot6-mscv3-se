

# Objectives #
The team has to create the low level design and codes for the Shape Reconstruction part of the project, in both C++ and Matlab

# Members #
| **Name** | **Role** |
|:---------|:---------|
| Angga Reza Fardana | Manager |
| Yukti Suri | Member |
| Taman Upadhaya | Member |
| Lijia Gao | Member |
| Andru Putra Twinanda | Member |
| Ozan Tonkal | Member |

# Meetings #

[26-10-2011](https://docs.google.com/a/norture.com/document/d/1Kc-S5GKnuM5CBZJNbw5qNTW7bOUM5vc4KMF-Dib9_xA/edit?hl=en_US)

In this meeting we discussed on how the Shape Reconstruction functions are used in the code, how to determine the number of variables relevant to the functions. Then we discussed on how to divide the task among members based on those variables.

[01-11-2011](https://docs.google.com/a/norture.com/document/d/1eDi79Vvc8ruSUu8MWXptV11tDNvhWZ9DwuFoLvsaFtQ/edit?hl=en_US)

In this meeting we decided to analyse the code together and discuss the low-level design of the functions. We continued the previous analysis of the functions, along with their relevant variables and how they are used in the functions. We've also figured out the input/output parameters of each functions and added header texts for each one too.

[17-11-2011](https://docs.google.com/a/norture.com/document/d/1E5wEn8YIlBQkyYLFq-3pa_XidkMrFBV3VzR0Q8Mu7Ho/edit?hl=en_US)

Beginning of clean up & coding of the functions relevant to the shape reconstruction part of the thesis. The function RobustInit has been ported to Matlab. Other functions are still being ported. For more details please see the respective meeting log above.

# Activity #

The team made a report on the Low-level design for Shape Reconstruction which can be viewed here:
[LLD for Shape Reconstruction](https://docs.google.com/a/norture.com/document/d/1Ji8cqD3nRoDTuA-FCqZGZrAlmIZ81JHq46wXPE8tr2I/edit?hl=en_US)

[C++ Code Repository](http://code.google.com/p/vibot6-mscv3-se/source/browse/#svn%2Ftrunk%2Fproject%2Fc%2B%2B%2Frational_supershape_2d)

[Matlab Code Repository](http://code.google.com/p/vibot6-mscv3-se/source/browse/#svn%2Ftrunk%2Fproject%2Fmatlab%2FShapeReconstruction)


# Questions & Answers #
| **No** | **Question** | **Answer** |
|:-------|:-------------|:-----------|
| 1. | What is the purpose of the optimization procedure? | It is used to minimize the cost function, hence to obtain and reconstruct an appropriate shape for a given image. |
| 2. | What is the name of function that is used to calculate the cost function and what else does it give? | The function name is XiSquare(). When it is called with a certain flag "update" on, it also updates the partial derivatives. |
| 3. | How is the symmetry parameter used in optimization? | The symmetry parameter is not optimized, however, the optimization of cost function is checked for all important values of m, i.e., m=3,4,6,8 |
| 4. | What is the purpose of defining three implicit functions? | The main purpose of implicit functions (defined in Superformula.cpp) is to calculate the potential field. However, depending on the requirements, there are three important definitions that can be used, as given in Valentine's paper. Hence there are three different functions for these different definitions. However, only one will be used depending on the programmer's (or could be user's) choice. |
| 5. | What kinds of changes in the cost function are rejected in the code? |  When the cost function decreases by less than or 1% or when it increases or when there is an improvement of more than 99%, the calculated h is rejected and a new one is calculated. |

# Issues #
See this page: [Issue 10](http://code.google.com/p/vibot6-mscv3-se/issues/detail?id=10)

# References #