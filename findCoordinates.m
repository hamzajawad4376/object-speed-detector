function [x, y] = findCoordinates(a)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    found = false;
    thresh = graythresh(a);
    a = im2bw(a, thresh);
    [r, c] = size(a);
    for i = 1: r
        for j = 1: c
		%first remove any noise from the top of the image
            if (i < 15 && a(i, j) == 1)
                a(i, j) = 0;
            end
			%check if pixel value is 1 and no pixel value labeled 1 is found uptill now
            if(a(i, j) == 1 && found == false)
                found = true;
                x = j;
                y = i;
                return
            end
        end
    end
end

