array=[3,6,8,12,14,17,25,29,31,36,42,47,53,55,62];
target=55;
found=false;

low=1;
high=length(array);

while low<=high
    mid=round((low+high)/2);
    
   if array(mid)==target
        found=true;
        index=mid;
        break;
   elseif target < array(mid)
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