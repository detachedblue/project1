 imaqInfo = imaqhwinfo
 hwInfo = imaqhwinfo('dcam')
%  device1 = hwInfo.DeviceInfo(1)

 cam = webcam;
 cam.AvailableResolutions
 cam.Resolution = cam.AvailableResolutions{7} % set to '1280x1024'
 
 
 preview(cam)
 for idx = 1:100
   % Acquire a single image.
   rgbImage = snapshot(cam);

   % Convert RGB to grayscale.
   grayImage = rgb2gray(rgbImage);

   % Find circles.
   [centers, radii] = imfindcircles(grayImage, [60 80]);

   % Display the image.
   imshow(rgbImage);
   hold on;
   viscircles(centers, radii);
   drawnow
 end
 
clear cam