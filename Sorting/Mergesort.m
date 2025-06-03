% Define the array to sort
array = [8, 4, 5, 3, 2, 9, 1];

% Call the merge sort function
sortedArray = mergeSort(array);

% Display the sorted array
disp('Sorted Array:');
disp(sortedArray);

function sortedArray = mergeSort(array)
% mergeSort - Sorts an array using the Merge Sort algorithm

    if length(array) <= 1
        % Base case: if array has 0 or 1 element, it is already sorted
        sortedArray = array;
        return;
    end

    % Find the midpoint of the array
    mid = floor(length(array) / 2);

    % Recursively sort the left half
    left = mergeSort(array(1:mid));

    % Recursively sort the right half
    right = mergeSort(array(mid+1:end));

    % Merge the two sorted halves
    sortedArray = merge(left, right);
end

function result = merge(left, right)
% merge - Merges two sorted arrays into one sorted array

    result = []; % Empty array to store the merged result
    i = 1; j = 1;

    % Merge elements from left and right in sorted order
    while i <= length(left) && j <= length(right)
        if left(i) <= right(j)
            result(end + 1) = left(i);
            i = i + 1;
        else
            result(end + 1) = right(j);
            j = j + 1;
        end
    end

    % Add remaining elements from left
    while i <= length(left)
        result(end + 1) = left(i);
        i = i + 1;
    end

    % Add remaining elements from right
    while j <= length(right)
        result(end + 1) = right(j);
        j = j + 1;
    end
end
