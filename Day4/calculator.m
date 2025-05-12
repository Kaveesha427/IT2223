num1=input('Enter number 1: ');
num2=input('Enter number 2: ');

operator=input('Select the operation to do: (+,-,*,/): ',"s");

%operator=inputstring('Select the operation to do: (+,-,*,/)');

switch operator
    case '+'
        result = num1 + num2;
        fprintf('\nSummation : %.2f\n', result);
    case '-'
        result = num1 - num2;
        fprintf('\nSubtraction : %.2f\n', result);
    case '*'
        result = num1 * num2;
        fprintf('\nMultiplication : %.2f\n', result);
    case '/'
        if num2 ~= 0
            result = num1 / num2;
            fprintf('\nDivision : %.2f\n', result);
        else
            disp('Error: Division by zero');
        end
    otherwise
        disp('invalid operator');
end