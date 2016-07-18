t=4;     
n=3;
    for(i=1:n)
    x=[1.5 3 6];
    f=[-0.25 2 20];
end
sum=0;
        for(i=1:n)
                pf=1;
                    for(j=1:n)
                if(i~=j)
            pf=pf*((t-x(j))/(x(i)-x(j)));
        end
    end
    sum=sum+(f(i)*pf);
end
printf('f(%d) = %f\n',t,sum);