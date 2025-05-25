arr=[3,6,8,12,14,17,25,29,31,36,42,47,53,55,62];

tic; 
target=3; %9, 19
found=false;

for i=1:length(arr)
    %disp(arr(i))
    if arr(i)==target
        found=true;
        index=i;
        break;
    end
    %index=index+1;
end
if found
    fprintf("Target element is found at index: %d \n",index)
else
    fprintf("Target element is not found \n")
end

elapsedTime=toc; 
fprintf('\nElapsed time: %f seconds\n',elapsedTime);