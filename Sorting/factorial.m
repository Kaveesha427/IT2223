function f = factorial(num)
    if num == 0 || num == 1
        f = 1;
    else
        f = num * factorial(num - 1);
    end
end
