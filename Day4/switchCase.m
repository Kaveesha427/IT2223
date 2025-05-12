day=input('Enter the day (1-5) :');

%by using if-else
% if day ==1
%     disp('Monday!')
% elseif day ==2
%     disp('Tuesday!')
% elseif day ==3
%     disp('Wednesday!')
% elseif day ==4
%     disp('Thursday!')
% elseif day ==5
%     disp('Friday!')
% end

%by using switch case
switch day  %if the variable is a string we need to specify it withing single quotations
    case 1
        disp('Monday!');
    case 2
        disp('Tuesday!');
    case 3
        disp('Wednesday!');
    case 4
        disp('Thursday!');
    case 5
        disp('Friday!');
    otherwise
        disp('Invalid day');
end