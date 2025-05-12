% mark1 = input('Enter your marks for subject 1: ')
% mark2 = input('Enter your marks for subject 2: ')
% mark3 = input('Enter your marks for subject 3: ')
% mark4 = input('Enter your marks for subject 4: ')
% mark5 = input('Enter your marks for subject 5: ')
% 
% marksArr=[mark1 mark2 mark3 mark4 mark5]
% 
% for i=1:length(marksArr)
%     marks=i
%     if(marks<0 || marks>100)
%         disp("invalid input")
%     elseif(marks>=90)
%         disp("Grade: A+")
% 
%     elseif(marks>=80)
%         disp("Grade: A+")
% 
%     elseif(marks>=70)
%         disp("Grade: A")
% 
%     elseif(marks>=60)
%         disp("Grade: C")
% 
%     elseif(marks>=50)
%         disp("Grade: D")
% 
%     else
%         disp("Grade: F") 
%     end
% end


gpa = zeros(1,5);
marks = zeros(1,5);

for i = 1:5
    marks(i)=input(['Enter marks for subject :']);

    if marks(i)>=90 && marks(i)<=100
        disp("Grade: A");
        gpa(i)=4.0
    elseif marks(i)>=80
        disp("Grade: B");
        gpa(i)=3.0
 
    elseif marks(i)>=70
        disp("Grade: C");
        gpa(i)=2.0
 
    elseif marks(i)>=60
        disp("Grade: D");
        gpa(i)=1.0
 
     else
        disp("Grade: F");
        gpa(i)=0.0
     end
end

GPA = mean(gpa);
fprintf('\nYour GPA is : %.2f\n', GPA);