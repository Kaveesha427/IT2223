%Bubble sort

array = [64,34,25,12,11,90];
n = length(array);

for i = 1:n-1
    for j = 1:n-i
   if (array(j)>array(j+1))
         temp = array(j);
       array(j)=array(j+1);
       array(j+1) = temp;
    end
end
 
end

fprintf("Bubble sort array:");
disp(array);