close all

% pattern generator
xresolution = 1280;
yresolution = 720;
channels = 3;
outputpattern = zeros(yresolution,xresolution,channels);

black = [0 0 0];
white = [255 255 255];
red = [255 0 0];
green = [0 255 0];
blue = [0 0 255];
cyan = [0 255 255];
magenta = [255 0 255];
yellow = [255 255 0];

%checkerboard pattern
checkersize = 50; % pixels
patternsizex = checkersize*2; % number of checkers in x direction before pattern repeats
patternsizey = checkersize*2; % number of checkers in y direction before pattern repeats
subpattern = zeros(patternsizex,patternsizey,channels);
for i = 1:checkersize
    for j = 1:checkersize
        subpattern(i,j,:) = white;
        subpattern(i+checkersize,j,:) = black;
        subpattern(i,j+checkersize,:) = black;
        subpattern(i+checkersize,j+checkersize,:) = white;
    end
end
figure(1)
imshow(subpattern)

numpatternshorz = floor(yresolution / patternsizex);
numpatternsvert = floor(xresolution / patternsizey);

for i = 1:patternsizex:numpatternshorz*patternsizex
    for j = 1:patternsizey:numpatternsvert*patternsizey
        outputpattern(i:i+patternsizex-1,j:j+patternsizey-1,:) = subpattern;
    end
end

figure(2);
imshow(outputpattern)
