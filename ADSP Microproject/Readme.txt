RUN_TO_ENCODE

This function is used to obtain the encoded image
Here txt_file is succesfully hidden inside im_file and is saved in the name im_out
Please pass the variables carefully. 
Also note that the final image is to be saved in the format of .png only.
Use of any lossy compression formats may destroy the hidden text

Example:
RUN_TO_ENCODE('ReadMe.txt','img001.jpg',img_out1.png');

RUN_TO_DECODE


This function is used to decode the text message from encoded image

Read the encoded image 
Example:

RUN_TO_DECODE()