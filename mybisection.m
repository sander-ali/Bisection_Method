function out=mybisection(x1, x2, n);

if x1 < x2
    fx1=f(x1);
    fx2=f(x2);

        if fx1*fx2<0
            for i=1:n
                c(i) =(x1+x2)/2;
                    if f(x1)*f(c(i))< 0
                        x2=c(i);
                    elseif f(x1)*f(c(i)) > 0
                        x1=c(i);
                    else
                        break;
                    end
                if i == 1
                    error(i) = 0;
                else
                    error(i) = abs(c(i) - c(i-1))/c(i);
                end
            end
        else
            disp('wrong choice of bracket values');
        end
else
    disp('provide the numbers in ascending order');
end
out = [c error];
end