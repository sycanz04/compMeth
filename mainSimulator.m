function output=mainSimulator()
    % Generating Service Type
    printf('\nService Type probability table\n');
    printf('---------------------------------------------------------------\n');
    printf('|Car Wash Service    |Probability  |CDF          |Range       |\n');
    printf('---------------------------------------------------------------\n');
    printf('|Polish Wax          |0.25         |0.25         |1 - 25      |\n');
    printf('|Self Service        |0.45         |0.70         |26 - 70     |\n');
    printf('|Waterless Washing   |0.30         |1.00         |71 - 100    |\n');
    printf('---------------------------------------------------------------\n');
    
    
    
    % Generating service time
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
     printf('\n\nWash bay 1\n');
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
           prob(count)=0.10;
           CDF(count)=prob(count);
           firstNum(count)=1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==2)
           serviceTime(count)=7; 
           prob(count)=0.15;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==3)
           serviceTime(count)=8; 
           prob(count)=0.30;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
   
        elseif(count==4)
           serviceTime(count)=9; 
           prob(count)=0.25;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==5)
           serviceTime(count)=10;
           prob(count)=0.20;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
        end
     end 
     printf('\n\nWash bay 2\n');
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
           prob(count)=0.20;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==3)
           serviceTime(count)=7; 
           prob(count)=0.15;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
   
        elseif(count==4)
           serviceTime(count)=8; 
           prob(count)=0.20;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
           
        elseif(count==5)
           serviceTime(count)=9; 
           prob(count)=0.15;
           CDF(count)=CDF(count-1)+prob(count);
           firstNum(count)=lastNum(count-1)+1;
           lastNum(count)=CDF(count)*100;
        end
     end 
     printf('\n\nWash bay 3\n');
     printf('----------------------------------------------------\n');
     printf('| Service Time  |  Probability  |  CDF   | Range   |\n');
     printf('----------------------------------------------------\n');
     for count=1:5
         printf('|      %3.0f      |    %1.2f       |  %1.2f  |%3.0f-%3.0f  |\n',[serviceTime(count),prob(count),CDF(count),firstNum(count),lastNum(count)]);
     end
     printf('----------------------------------------------------\n');
    
    
     
    %Generate Interval Time;
    %Set value for each column
    for count=1:5
        if (count==1)
            interarrivalTime(count)=1;
            prob(count)=0.2;
            CDF(count)=prob(count);
            firstNum(count)=1;
            lastNum(count)=CDF(count)*100;
        elseif (count==2)
            interarrivalTime(count)=2;
            prob(count)=0.15;
            CDF(count)=CDF(count-1)+prob(count);
            firstNum(count)=lastNum(count-1)+1;
            lastNum(count)=CDF(count)*100;
        elseif (count==3)
            interarrivalTime(count)=3;
            prob(count)=0.25;
            CDF(count)=CDF(count-1)+prob(count);
            firstNum(count)=lastNum(count-1)+1;
            lastNum(count)=CDF(count)*100;
        elseif (count==4)
            interarrivalTime(count)=4;
            prob(count)=0.30;
            CDF(count)=CDF(count-1)+prob(count);
            firstNum(count)=lastNum(count-1)+1;
            lastNum(count)=CDF(count)*100; 
        else
            interarrivalTime(count)=5;
            prob(count)=0.1;
            CDF(count)=CDF(count-1)+prob(count);
            firstNum(count)=lastNum(count-1)+1;
            lastNum(count)=CDF(count)*100;       
         end
    end
    
    valid=0;
    carNum=input('How many cars are there? Minimum 1 cars: ');
    while (valid==0)%Error checking
        if(carNum<1)
            printf('Minimum of 1 cars needed for simulation to work\n');
            carNum=input('How many cars are there? Minimum 1 cars ');
        else
            valid=1;
        end
    end
    
    % Choosing what random generator to use
    valid=0;            
    printf('Which random generator would you choose?\n');
    printf('1.Rand function from Freemat\n2.Linear Congruential Generator\n');
    while (valid==0) % Error checking
        generatorChoice=input('Choice: ');
        
        if(generatorChoice==1|generatorChoice==2)
            valid=1;
           
        else
            printf('Invalid generator choice.Please re-enter:\n');
            generatorChoice=input('');
        end             
    end

    
    % Generating random number for interval and service type based on service type
    if (generatorChoice==1) % Uniformly Distributed Integer
    seed1 = 100*rand();
    seed2 = 100*rand();
    valid = 0;
    while (valid == 0)
        if seed1 > seed2
            seed1 = 100*rand();
            seed2 = 100*rand();
        else
            seed(seed1, seed2);
            valid = 1;
        end
    end
    
    disp('Service Time: ')
    for count = 1:carNum
        serviceTime(count) = 1 + (100 - 1) * rand();
        disp(round(serviceTime(count)))
    end
    
    disp('Inter Arrival: ')
    for count = 1:carNum
        rnInterArrival(count) = 1 + (100 - 1) * rand();
        disp(round(rnInterArrival(count)))
    end
    
    % Find inter arrival time
    disp('Final Inter Arrival Time: ')
    for count = 1:carNum
        num = 5
        for i = 1:num
            if rnInterArrival(count) >= firstNum(i) && rnInterArrival(count) <= lastNum(i)
                finalIntervalArrivalTime = interarrivalTime(i);
                num = num - 1;
                break;
            end
        end
    end
    
    disp('Service Type: ')
    for count = 1:carNum
        serviceType(count) = 1 + (3 - 1) * rand();
        disp(round(serviceType(count)))
    end

    elseif generatorChoice==2 % Linear Congruential Generator
        for count=1:customerNumber
            custRandServiceType(count)=randi(1,100);
            customerRandInterval(count)=round(mod(rand.*100,99)+1);
        end
    end
    
    printf('\n\nOverall Simulation Table\n');
    printf('----------------------------------------------------------------------------------------\n');
    printf('| Car | RN Interval-arrival Time | Interval-arrival Time | Arrival Time | Service Type |\n');
    printf('----------------------------------------------------------------------------------------\n');
    for count=1:carNum
        fprintf('|  %d  |            %d            |          %d            |      %d       |       %d      |\n',[count,rnInterArrival(count),finalIntervalArrivalTime(count),ones,serviceType(count)]);
    end
    printf('----------------------------------------------------------------------------------------\n');
end