# NumberPlate_Recognition
Number Plate recognition using the MATLAB inbuilt functions

System Architecture
---------------------

* Preprocessing
After capturing the image is the preprocessing of the image. 
When the image is captured there is lot of disturbances and noises present in the image for which the image can’t be used properly. So in this step the noises from the image are required to be cleared to obtain an accurate result.
* Feature Extraction
The number plate is extracted from the whole image.
In this assignment this is done by using erosion, dilation, opening and closing morphological operations.
As the final step of this stage, the grey scale image that has been processed is converted into binary to serve the purpose of the next stage of the system architecture.

* Interpretation/Recognition
Finally, the characters in the number plate are recognized using the Optical Character Recognition (OCR) method in MATLAB and the result is displayed as an output.

--------------------------------------------------------------------------------------------------------------------------------
 
Image Processing Techniques
---------------------------

* Converting to grey scale
This Technique is used for pre- processing and identifying the required information. In this step coloured image is converted into the grayscale image. So a 2D grayscale image is used in the upcoming processes.

* Filtering the Image
To remove the noise of the image the 2D Gaussian Filter is used with the sigma being with the value of 0.5.

Imgaussfilt is the inbuilt function of the MATLAB is used for this.

* Morphological Operations
To remove unnecessary boundary pixels as well as to add necessary boundary pixels the erosion and dilation morphological operations are used. 
To perform an opening, the image is firstly dilated and then eroded while to perform a closing the image is first eroded and then dilated.
For this imerode and imdilate inbuilt functions are used in MATLAB with the assistance of the strel function which defines the structural element that is used for erosion and dilation.

* Image Subtraction and Addition
The images taken by dilating and eroding are subtracted and added to get an output image with enhanced edges.
MATLAB function imsubtract and imadd are used for this.

* Image Complementing
The image is complemented to convert the darker pixels into whiter and vise versa. 
Remove small objects from binary image
 Removes all connected components (objects) that have fewer than P pixels from the binary image , producing another binary image.
 
* Optical Character Recognition

To recognize each character the inbuilt MATLAB function ocr is used and the recognized characters are displayed in the console using the disp command in MATLAB.


* Measure properties of image regions 

 Returns measurements for the set of properties specified by properties for each 8-connected component (object) in the binary image. stats is struct array containing a struct for each object in the image.












