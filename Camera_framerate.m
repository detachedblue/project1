%  cam = webcam;
%  cam.AvailableResolutions
%  cam.Resolution = cam.AvailableResolutions{17} % set to '1920x1080' for Logitech C930e
 
 
%  preview(cam)
%  for idx = 1:10
%    % Acquire a single image.
%    rgbImage = snapshot(cam);
% 
%    % Convert RGB to grayscale.
%    grayImage = rgb2gray(rgbImage);
% 
%    % Find circles.
%    [centers, radii] = imfindcircles(grayImage, [60 80]);
% 
%    % Display the image.
%    imshow(rgbImage);
%    hold on;
%    viscircles(centers, radii);
%    drawnow
%  end
%  
% clear cam

imaqInfo = imaqhwinfo
hwInfo = imaqhwinfo('winvideo')
device1 = hwInfo.DeviceInfo(1)

vidobj = videoinput('winvideo', 1,'MJPG_1280x720');


% numframes = 100;

% Configure the number of frames to log.
vidobj.FramesPerTrigger = 50;

% Skip the first few frames the device provides
% before logging data.
vidobj.TriggerFrameDelay = 5;

% Access the device's video source.
src = getselectedsource(vidobj);

% Determine the device specific frame rates (frames per second) available.
frameRates = set(src, 'FrameRate')

% Configure the device's frame rate to the highest available setting.
src.FrameRate = frameRates{1};
actualRate = str2num( frameRates{1} )


% Start the acquisition.
start(vidobj)

% Wait for data logging to end before retrieving data.  Set the wait time
% to be equal to the expected time to acquire the number of frames
% specified plus a little buffer time to accommodate  overhead.
waittime = actualRate * (vidobj.FramesPerTrigger + vidobj.TriggerFrameDelay) + 5;
wait(vidobj, waittime);

% Retrieve the data and timestamps.
[frames, timeStamp] = getdata(vidobj);

% Graph frames vs time.
plot(timeStamp,'x')
xlabel('Frame Index')
ylabel('Time(s)')

% Find the time difference between frames.
diffFrameTime = diff(timeStamp);

% Graph the time differences.
plot(diffFrameTime, 'x');
xlabel('Frame Index')
ylabel('Time Difference(s)')
ylim([0 .12])

% Find the average time difference between frames.
avgTime = mean(diffFrameTime)

% Determine the experimental frame rate.
expRate = 1/avgTime

% Determine the percent error between the determined and actual frame rate.
diffRates = abs(actualRate - expRate)

percentError = (diffRates/actualRate) * 100

% Once the video input object is no longer needed, delete
% it and clear it from the workspace.
delete(vidobj)
clear vidobj



% tic
% 
%  for idx = 1:numframes
% %    % Acquire a single image.
% 
%  t = cputime;
% %    rgbImage = getsnapshot(vidobj);
% %    imshow(rgbImage);
%  
%  fps = 1/(cputime-t)
%  end
%  
%  elapsedtime = toc
%  framerate = numframes/elapsedtime

