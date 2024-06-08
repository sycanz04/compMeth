function output = serviceTime(x)
    printf('\nTypes of Service offered\n');
    disp('----------------------------------------------------------------');
    disp('| Service Type |               Detail              | Counter   |');
    disp('----------------------------------------------------------------');
    disp('|      1       | Polish Wax                        | 1,2       |');
    disp('|      2       | Self Service                      | 3,4,5     |');
    disp('|      3       | Waterless Washing                 | 6,7       |');
    disp('----------------------------------------------------------------');
    
    % For loop for polish wax service time
    for count=1:5
        if (count==1)
           serviceTime(count)=3; 
           prob(count)=0.20;
           CDF(count)=prob(count);
           firstNum(count)=1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==2)
           serviceTime(count)=4; 
           prob(count)=0.10;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==3)
           serviceTime(count)=5; 
           prob(count)=0.25;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
   
        elseif(count==4)
           serviceTime(count)=6; 
           prob(count)=0.30;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==5)
           serviceTime(count)=7; 
           prob(count)=0.15;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
        end
     end 
     printf('\n\nPolish Wax Service Time\n');
     printf('----------------------------------------------------\n');
     printf('| Service Time  |  Probability  |  CDF   | Range   |\n');
     printf('----------------------------------------------------\n');
     for count=1:5
         printf('|      %3.0f      |    %1.2f       |  %1.2f  |%3.0f-%3.0f  |\n',[serviceTime(count),prob(count),CDF(count),firstNum(count),lastNum(count)]);
     end
     printf('----------------------------------------------------\n');
     
     % For loop for self service service time
     for count=1:5
        if (count==1)
           serviceTime(count)=6; 
           prob(count)=0.15;
           CDF(count)=prob(count);
           firstNum(count)=1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==2)
           serviceTime(count)=7; 
           prob(count)=0.30;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==3)
           serviceTime(count)=8; 
           prob(count)=0.25;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
   
        elseif(count==4)
           serviceTime(count)=9; 
           prob(count)=0.1;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==5)
           serviceTime(count)=10; 
           prob(count)=0.2;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
        end
     end 
     printf('\n\nSelf Service Service Time\n');
     printf('----------------------------------------------------\n');
     printf('| Service Time  |  Probability  |  CDF   | Range   |\n');
     printf('----------------------------------------------------\n');
     for count=1:5
         printf('|      %3.0f      |    %1.2f       |  %1.2f  |%3.0f-%3.0f  |\n',[serviceTime(count),prob(count),CDF(count),firstNum(count),lastNum(count)]);
     end
     
     printf('----------------------------------------------------\n');
     
     % For loop for waterless washing service time
     for count=1:5
        if (count==1)
           serviceTime(count)=5; 
           prob(count)=0.3;
           CDF(count)=prob(count);
           firstNum(count)=1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==2)
           serviceTime(count)=6; 
           prob(count)=0.15;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==3)
           serviceTime(count)=7; 
           prob(count)=0.35;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
   
        elseif(count==4)
           serviceTime(count)=8; 
           prob(count)=0.1;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==5)
           serviceTime(count)=9; 
           prob(count)=0.1;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
        end
     end 
     printf('\n\nWaterless Washing Service Time\n');
     printf('----------------------------------------------------\n');
     printf('| Service Time  |  Probability  |  CDF   | Range   |\n');
     printf('----------------------------------------------------\n');
     for count=1:5
         printf('|      %3.0f      |    %1.2f       |  %1.2f  |%3.0f-%3.0f  |\n',[serviceTime(count),prob(count),CDF(count),firstNum(count),lastNum(count)]);
     end
     printf('----------------------------------------------------\n');
     
 end