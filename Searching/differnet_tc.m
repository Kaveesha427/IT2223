arr=[3,6,8,12,14,17,25,29,31,36,42,47,53,55,62];

tic; 
%linear search
target=62; 
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

TC_linear=toc;

%Binary Search
tic
low=1;
high=length(arr);

while low<=high
    mid=round((low+high)/2);
    
   if arr(mid)==target
        found=true;
        index=mid;
        break;
   elseif target < arr(mid)
         high = mid-1;
   else 
         low = mid+1;
   end
end
if found
    fprintf("Target element is found at index: %d \n",index)
else
    fprintf("Target element is not found \n")
end

TC_binary=toc;
different=TC_linear-TC_binary;
fprintf('\nElapsed time for  linear search: %f seconds\n',TC_linear);
fprintf('\nElapsed time for binary search: %f seconds\n',TC_binary);
fprintf('different of time complexity:%f\n',different);

