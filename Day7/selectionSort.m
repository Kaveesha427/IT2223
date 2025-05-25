arr = [7,4,10,8,3,1];

tic
for i = 1:length(arr)-1
    min_index = i;
    for j = i+1:length(arr)
        if arr(min_index)>arr(j)
            min_index = j;
           
        end
        
    end
    temp  =arr(i);
    arr(i)=arr(min_index);
    arr(min_index)=temp;
end
fprintf('Sorted Array:')
fprintf(' %d',arr);

TimeComplexity=toc;
fprintf('\nIime Complexity of Sorted Array:%f',TimeComplexity);
fprintf('\n');



