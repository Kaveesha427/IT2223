% Define the array to sort
array = [38, 27, 43, 3, 9, 82, 10];

% Call the quick sort function
sortedArray = quickSort(array);

% Display the sorted array
disp('Sorted Array:');
disp(sortedArray);

function sortedArray = quickSort(array)
% quickSort - Sorts an array using the Quick Sort algorithm

    if length(array) <= 1
        % Base case: already sorted
        sortedArray = array;
        return;
    end

    % Choose the pivot (first element)
    pivot = array(1);

    % Partition the array into two parts
    left = array(array < pivot);    % All elements less than pivot
    middle = array(array == pivot); % All elements equal to pivot (handles duplicates)
    right = array(array > pivot);   % All elements greater than pivot

    % Recursively sort left and right, then combine
    sortedArray = [quickSort(left), middle, quickSort(right)];
end

