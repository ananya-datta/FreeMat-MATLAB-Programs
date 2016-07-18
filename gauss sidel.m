e=0.000001;
maxit=100;
n=3;
a=[20 1 -2 17;3 20 -1 -18;2 -3 20 25]
printf('Iter      x        y          z\n');
printf('-------------------------------------\n');
                        for(i=1:n)
                        x(i)=0;
                        end
                       for(iter=1:maxit)
                  big=0;
        for(i=1:n)
            sum=0;
            for(j=1:n)
                if(j~=i)
                    sum=sum+a(i,j)*x(j);
                 end
            end
                 temp=(a(i,n+1)-sum)/a(i,i);
                 relerror=abs((x(i)-temp)/temp);
                 
                 if(relerror>big)
                     big=relerror;
                     x(i)=temp;
                 end
             end
        if(big<=e)
            for(i=1:n)
                x(i); 
             end 
            break;
          end
        if(mod(iter+2,3)==0)                 
               printf('%d    %f   %f   %f\n',iter/3,x(1),x(2),x(3));
              end
          end
     for(i=1:n)
         x(i);
       end       
      printf('\n\n x=%f \t           y=%f \t              z=%f\n',x(1),x(2),x(3));
      

    