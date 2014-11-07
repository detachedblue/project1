close all

imaqInfo = imaqhwinfo
hwInfo = imaqhwinfo('winvideo')
device1 = hwInfo.DeviceInfo(1)

vidobj = videoinput('winvideo', 1,'MJPG_1280x720');

vidobj.FramesPerTrigger = 100;

% Initiate the acquisition.
start(vidobj)

% Notice the number of frames in memory.
numAvail = vidobj.FramesAvailable
% Loop through till 10 frames are acquired
% if numAvail == 0
%     numAvail = 1;
% end

tic
while(numAvail<=20)
    numAvail = vidobj.FramesAvailable;
end
toc
% Stop the acquisition.
stop(vidobj)

% View the total number of frames that were logged before stopping.
numAcquired = vidobj.FramesAcquired
% numAcquired = 1

% Retrieve all logged data.
imageData = getdata(vidobj, numAcquired);


% Display one of the logged frames.
figure;
imagesc(imageData(:,:,:,numAcquired))

imwrite(imageData(:,:,:,numAcquired),'test.png')


flushdata(vidobj);
delete(vidobj)
clear vidobj
