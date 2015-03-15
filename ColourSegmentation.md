# IHLS #

# LT #

After the image is converted from RGB to IHLS color space. We will treshold the image by a method name "Luminance Thresholding" which can be describe as follows.

## Assumption ##
Images have different luminance (amount of light) so the thresold level should be a function of L value (luminance).

## How to ##
  1. Compute mean of L over the image.
  1. Normalize mean to make it within range of [0, 1)
  1. Threshold level is e^(NormalizedMean)
  1. For every pixel
    1. Compute 2D Euclidean distance of that pixel color with the Reference pixel. Reference pixel is obtained by user somehow maybe clicking or hard-coded. See code for all implementation.
    1. Compare if the distance is smaller than Threshold of not. If so, the pixel is the road sign; otherwise, it is not.

## Some code ##
```
//calculate mean of L
for each (pixel p){
  mean += p.l
}
mean /= size of image
Nmean = mean / 256    // assume that we have 8bit image

//calculate thresold
thresold = exp(Nmean)

//treshold
for each (pixel p){
  //calc distance d. S1 is ref. S2 is a pixel. Please see S1 and S2 in the summary
  float a = p.s * cos(p.h) - ref.s * cos(ref.h)
  float b = p.s * sin(p.h) - ref.s * sin(ref.h)
  float d = sqrtf(a * a + b * b)
  *outData++ = d <= tresh ? UCHAR_MAX : 0
}
```

# NHS #
# HUE #

1. The hue angle is traditionally measured starting at the direction corresponding to pure red.

2. The simplest way to derive an expression for this angle is to project the vector (1; 0; 0) corresponding to red in the RGB space and an arbitrary vector c onto a plane perpendicular to the achromatic
axis.

3. For formula and pictorial representation refer Downloads sections:
> Filename: Hue (Hue Reference 1)
> Filename: Hue2(Hue Reference 2)