%Titus John
%Philadelphia
%2-24-17
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Real pain to deal with index stating at 0 when working in Matlab

%input
%The folder that contains all  the images that will be utilzied in the
%loocation

%output
%images for a given car loaded into a given array by car number
%carImages(5x10) for 5 cars
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function  [carImages] = sperateCarImageSet

picFolderPath = strcat(pwd,'/pics');
allPictures = dir(picFolderPath);

carCount = 1;
pictureCount = 1;

    for  i = 3 :length(allPictures) %Start on the third index
        
        %When ten images are read then  increase the car count by 1 and
        %reset pictures
            if pictureCount == 11
                carCount = carCount +1; 
                pictureCount = 1;
            end
       
            
        currentPic = imread(allPictures(i).name);
        
        carImages{carCount,pictureCount} = {currentPic}; 
        pictureCount = pictureCount +1;
        
        
   
    end
    
end