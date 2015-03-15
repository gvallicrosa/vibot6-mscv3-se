# Introduction #

Here is the list of what still needs to be done for our project. Please update this page accordingly.


# C++ #
  * GUI
    * Options (Having the same options as Matlab).
    * QT Settings (started to work in [r526](https://code.google.com/p/vibot6-mscv3-se/source/detail?r=526))
    * Getting rid of the the confirmation questions. Currently for each step it asks whether user is sure.
    * Saving output images.
    * Saving logs. (For each step saved the information in a txt file, empty line can be used for separation of data in a file.) (The Matlab part is implemented, please refer to that for guideline.)
    * ~~When no image is selected and process button is pressed, application crashes~~. (solved in [r523](https://code.google.com/p/vibot6-mscv3-se/source/detail?r=523))
    * ~~Keeping the image folder path~~. (solved in [r526](https://code.google.com/p/vibot6-mscv3-se/source/detail?r=526))
    * A button for process all the loaded images.

  * Compilation
    * Windows compilation.
    * No button is displayed when its compiled with cmake, although when it's compiled with qmake, it works fine.

  * Detection
    * For many images the final output is wrong (it becomes like leafs of a flower).
    * For some images the output although correct but is much smaller than the road sign.

# Matlab #
  * Solve problems with Gielis module

  * GUI
    * When GUI starts, check the last image folder and load the image list
    * Add a button "Save Selected" to save the checked outputs (because "Save all" saves everything). The outputs must be for Image outputs (original, nhs, noiseRemoval, cleanImage, contourExtraction, output), and the file outputs (contourExtraction, rotationalOffsets, gielisRecontruction). Add the necessary checkboxes.
    * It will be better to save the outputs in a subfolder where the image is, called output, instead in the main Matlab path.
    * Check the names of the checkboxes for images outputs with the names displayed under the images when displayed.

  * Optional...
    * Maybe add a gielis parameters output (a, b, m, n1, n2, n3) to a file
    * Maybe implement a way to process all the images in a folder with a "Process all" button and save directly all images, not displaying anything


# Documentation #