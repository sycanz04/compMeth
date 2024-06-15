function output=mainSimulator()
    % Generating service time
    % For loop for polish wax service time
    for count=1:5
        if (count==1)
           wbOneServiceTime(count)=3; 
           wbOneProb(count)=0.20;
           wbOneCdf(count)=wbOneProb(count);
           wbOneFirstNum(count)=1;
           wbOneLastNum(count)=wbOneCdf(count)*100;
           
        elseif(count==2)
           wbOneServiceTime(count)=4; 
           wbOneProb(count)=0.10;
           wbOneCdf(count)=wbOneCdf(count-1)+wbOneProb(count);
           wbOneFirstNum(count)=wbOneLastNum(count-1)+1;
           wbOneLastNum(count)=wbOneCdf(count)*100;
           
        elseif(count==3)
           wbOneServiceTime(count)=5; 
           wbOneProb(count)=0.25;
           wbOneCdf(count)=wbOneCdf(count-1)+wbOneProb(count);
           wbOneFirstNum(count)=wbOneLastNum(count-1)+1;
           wbOneLastNum(count)=wbOneCdf(count)*100;
   
        elseif(count==4)
           wbOneServiceTime(count)=6; 
           wbOneProb(count)=0.30;
           wbOneCdf(count)=wbOneCdf(count-1)+wbOneProb(count);
           wbOneFirstNum(count)=wbOneLastNum(count-1)+1;
           wbOneLastNum(count)=wbOneCdf(count)*100;
           
        elseif(count==5)
           wbOneServiceTime(count)=7; 
           wbOneProb(count)=0.15;
           wbOneCdf(count)=wbOneCdf(count-1)+wbOneProb(count);
           wbOneFirstNum(count)=wbOneLastNum(count-1)+1;
           wbOneLastNum(count)=wbOneCdf(count)*100;
        end
     end 
     printf('\nWash bay 1\n');
     printf('----------------------------------------------------\n');
     printf('| Service Time  |  Probability  |  CDF   | Range   |\n');
     printf('----------------------------------------------------\n');
     for count=1:5
         printf('|      %3.0f      |    %1.2f       |  %1.2f  |%3.0f-%3.0f  |\n',[wbOneServiceTime(count),wbOneProb(count),wbOneCdf(count),wbOneFirstNum(count),wbOneLastNum(count)]);
     end
     printf('----------------------------------------------------\n');
     
     
     % For loop for self service service time
     for count=1:5
        if (count==1)
           wbTwoServiceTime(count)=6; 
           wbTwoProb(count)=0.10;
           wbTwoCdf(count)=wbTwoProb(count);
           wbTwoFirstNum(count)=1;
           wbTwoLastNum(count)=wbTwoCdf(count)*100;
           
        elseif(count==2)
           wbTwoServiceTime(count)=7; 
           wbTwoProb(count)=0.15;
           wbTwoCdf(count)=wbTwoCdf(count-1)+wbTwoProb(count);
           wbTwoFirstNum(count)=wbTwoLastNum(count-1)+1;
           wbTwoLastNum(count)=wbTwoCdf(count)*100;
           
        elseif(count==3)
           wbTwoServiceTime(count)=8; 
           wbTwoProb(count)=0.30;
           wbTwoCdf(count)=wbTwoCdf(count-1)+wbTwoProb(count);
           wbTwoFirstNum(count)=wbTwoLastNum(count-1)+1;
           wbTwoLastNum(count)=wbTwoCdf(count)*100;
   
        elseif(count==4)
           wbTwoServiceTime(count)=9; 
           wbTwoProb(count)=0.25;
           wbTwoCdf(count)=wbTwoCdf(count-1)+wbTwoProb(count);
           wbTwoFirstNum(count)=wbTwoLastNum(count-1)+1;
           wbTwoLastNum(count)=wbTwoCdf(count)*100;
           
        elseif(count==5)
           wbTwoServiceTime(count)=10;
           wbTwoProb(count)=0.20;
           wbTwoCdf(count)=wbTwoCdf(count-1)+wbTwoProb(count);
           wbTwoFirstNum(count)=wbTwoLastNum(count-1)+1;
           wbTwoLastNum(count)=wbTwoCdf(count)*100;
        end
     end 
     printf('\nWash bay 2\n');
     printf('----------------------------------------------------\n');
     printf('| Service Time  |  Probability  |  CDF   | Range   |\n');
     printf('----------------------------------------------------\n');
     for count=1:5
         printf('|      %3.0f      |    %1.2f       |  %1.2f  |%3.0f-%3.0f  |\n',[wbTwoServiceTime(count),wbTwoProb(count),wbTwoCdf(count),wbTwoFirstNum(count),wbTwoLastNum(count)]);
     end
     
     printf('----------------------------------------------------\n');
     
     
     % For loop for waterless washing service time
     for count=1:5
        if (count==1)
           wbThreeServiceTime(count)=5; 
           wbThreeProb(count)=0.3;
           wbThreeCdf(count)=wbThreeProb(count);
           wbThreeFirstNum(count)=1;
           wbThreeLastNum(count)=wbThreeCdf(count)*100;
           
        elseif(count==2)
           wbThreeServiceTime(count)=6; 
           wbThreeProb(count)=0.20;
           wbThreeCdf(count)=wbThreeCdf(count-1)+wbThreeProb(count);
           wbThreeFirstNum(count)=wbThreeLastNum(count-1)+1;
           wbThreeLastNum(count)=wbThreeCdf(count)*100;
           
        elseif(count==3)
           wbThreeServiceTime(count)=7; 
           wbThreeProb(count)=0.15;
           wbThreeCdf(count)=wbThreeCdf(count-1)+wbThreeProb(count);
           wbThreeFirstNum(count)=wbThreeLastNum(count-1)+1;
           wbThreeLastNum(count)=wbThreeCdf(count)*100;
   
        elseif(count==4)
           wbThreeServiceTime(count)=8; 
           wbThreeProb(count)=0.20;
           wbThreeCdf(count)=wbThreeCdf(count-1)+wbThreeProb(count);
           wbThreeFirstNum(count)=wbThreeLastNum(count-1)+1;
           wbThreeLastNum(count)=wbThreeCdf(count)*100;
           
        elseif(count==5)
           wbThreeServiceTime(count)=9; 
           wbThreeProb(count)=0.15;
           wbThreeCdf(count)=wbThreeCdf(count-1)+wbThreeProb(count);
           wbThreeFirstNum(count)=wbThreeLastNum(count-1)+1;
           wbThreeLastNum(count)=wbThreeCdf(count)*100;
        end
     end 
     printf('\nWash bay 3\n');
     printf('----------------------------------------------------\n');
     printf('| Service Time  |  Probability  |  CDF   | Range   |\n');
     printf('----------------------------------------------------\n');
     for count=1:5
         printf('|      %3.0f      |    %1.2f       |  %1.2f  |%3.0f-%3.0f  |\n',[wbThreeServiceTime(count),wbThreeProb(count),wbThreeCdf(count),wbThreeFirstNum(count),wbThreeLastNum(count)]);
     end
     printf('----------------------------------------------------\n');
    
    
     
    %Generate Interval Time;
    %Set value for each column
    for count=1:5
        if (count==1)
            iaInterarrivalTime(count)=1;
            iaProb(count)=0.2;
            iaCdf(count)=iaProb(count);
            iaFirstNum(count)=1;
            iaLastNum(count)=iaCdf(count)*100;
        elseif (count==2)
            iaInterarrivalTime(count)=2;
            iaProb(count)=0.15;
            iaCdf(count)=iaCdf(count-1)+iaProb(count);
            iaFirstNum(count)=iaLastNum(count-1)+1;
            iaLastNum(count)=iaCdf(count)*100;
        elseif (count==3)
            iaInterarrivalTime(count)=3;
            iaProb(count)=0.25;
            iaCdf(count)=iaCdf(count-1)+iaProb(count);
            iaFirstNum(count)=iaLastNum(count-1)+1;
            iaLastNum(count)=iaCdf(count)*100;
        elseif (count==4)
            iaInterarrivalTime(count)=4;
            iaProb(count)=0.30;
            iaCdf(count)=iaCdf(count-1)+iaProb(count);
            iaFirstNum(count)=iaLastNum(count-1)+1;
            iaLastNum(count)=iaCdf(count)*100; 
        else
            iaInterarrivalTime(count)=5;
            iaProb(count)=0.1;
            iaCdf(count)=iaCdf(count-1)+iaProb(count);
            iaFirstNum(count)=iaLastNum(count-1)+1;
            iaLastNum(count)=iaCdf(count)*100;       
         end
    end
    printf('\nInter-Arrival Table\n');
    printf('----------------------------------------------------------\n');
    printf('| Inrer-Arrival Time  |  Probability  |  CDF   | Range   |\n');
    printf('----------------------------------------------------------\n');
    for count=1:5
        printf('|        %3.0f          |     %1.2f      |  %1.2f  |%3.0f-%3.0f  |\n',[iaInterarrivalTime(count),iaProb(count),iaCdf(count),iaFirstNum(count),iaLastNum(count)]);
    end
    printf('----------------------------------------------------------\n');
    
    % Generating Service Type
    for count=1:3
        if (count==1)
            serviceType(count)=1; 
            serviceTypeProb(count)=0.25;
            serviceTypeCdf(count)=serviceTypeProb(count);
            serviceTypeFirstNum(count)=1;
            serviceTypeLastNum(count)=serviceTypeCdf(count)*100;
           
        elseif(count==2)
            serviceType(count)=2; 
            serviceTypeProb(count)=0.45;
            serviceTypeCdf(count)=serviceTypeCdf(count-1)+serviceTypeProb(count);
            serviceTypeFirstNum(count)=serviceTypeLastNum(count-1)+1;
            serviceTypeLastNum(count)=serviceTypeCdf(count)*100;
           
        elseif(count==3)
            serviceType(count)=3; 
            serviceTypeProb(count)=0.30;
            serviceTypeCdf(count)=serviceTypeCdf(count-1)+serviceTypeProb(count);
            serviceTypeFirstNum(count)=serviceTypeLastNum(count-1)+1;
            serviceTypeLastNum(count)=serviceTypeCdf(count)*100;
        end
    end
    printf('\nService Type\n');
    printf('--------------------------------------------------------\n');
    printf('| Car wash Service  |  Probability  |  CDF   | Range   |\n');
    printf('--------------------------------------------------------\n');
    for count=1:3
        printf('|         %d         |    %1.2f       |  %1.2f  |%3.0f-%3.0f  |\n',[serviceType(count),serviceTypeProb(count),serviceTypeCdf(count),serviceTypeFirstNum(count),serviceTypeLastNum(count)]);
    end
    printf('--------------------------------------------------------\n\n');
    
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
    printf('\nWhich random generator would you choose?\n');
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
    
    
    % Generating seed number for different generators
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
        
    if (generatorChoice==1) % Uniformly Distributed Integer
        % Generate random inter arrival time
        disp('Random Inter Arrival: ')
        for count = 1:carNum
            if count == 1
                rnInterArrival(count) = 0;
            else
                rnInterArrival(count) = round(1 + (100 - 1) * rand());
            end
            disp(rnInterArrival(count));
        end
        
        % Generate random service time
        disp('Random Service Time: ')
        for count = 1:carNum
            rnServiceTime(count) = round(1 + (100 - 1) * rand());
            disp(rnServiceTime(count));
        end
        
        % Generate random service type
        %disp('Service Type: ')
        for count = 1:carNum
            rnServiceType(count) = 1 + (3 - 1) * rand();
            %disp(round(rnServiceType(count)))
        end
    
    elseif generatorChoice==2 % Linear Congruential Generator
        for count=1:customerNumber
            custRandServiceType(count)=randi(1,100);
            customerRandInterval(count)=round(mod(rand.*100,99)+1);
        end
    end
    
    % Find inter arrival time
    %disp('Final Inter Arrival Time: ')
    for count = 1:carNum
        for i = 1:5
            if rnInterArrival(count) >= iaFirstNum(i) && rnInterArrival(count) <= iaLastNum(i)
                finalIntervalArrivalTime(count) = iaInterarrivalTime(i);
                break;
            end
        end
        %disp(finalIntervalArrivalTime(count))
    end
    
    % Find Arrival Time
    %disp('Arrival Time: ')
    for count = 1:carNum
        if count == 1
            arrivalTime(count) = 0;
        else
            arrivalTime(count) = arrivalTime(count - 1) + finalIntervalArrivalTime(count);
        end
        %disp(arrivalTime(count))
    end
    
    printf('\nOverall Simulation Table\n');
    printf('----------------------------------------------------------------------------------------\n');
    printf('| Car | RN Interval-arrival Time | Interval-arrival Time | Arrival Time | Service Type |\n');
    printf('----------------------------------------------------------------------------------------\n');
    for count=1:carNum
        fprintf('|  %d  |            %d            |          %d            |      %d       |       %d      |\n',[count, rnInterArrival(count), finalIntervalArrivalTime(count), arrivalTime(count), rnServiceType(count)]);
    end 
    printf('----------------------------------------------------------------------------------------\n');
    
    % Find service time
    %disp('Service Time: ')
    for count = 1:carNum
        for i = 1:5
            if rnServiceTime(count) >= wbOneFirstNum(i) && rnServiceTime(count) <= wbOneLastNum(i)
                serviceTime(count) = wbOneServiceTime(i);
                break;
        end
        %disp(serviceTime(count))
    end
    
    % Find time service begins and ends
    for count = 1:carNum
        if count == 1
            timeServiceBegin(count) = 0;
            % Find time service ends for count = 1
            timeServiceEnds(count) = timeServiceBegin(count) + serviceTime(count);
        else
            if arrivalTime(count) < timeServiceEnds(count-1)
                timeServiceBegin(count) = serviceTime(count);
                timeServiceEnds(count) = timeServiceBegin(count) + serviceTime(count);
            elseif arrivalTime(count) > timeServiceEnds(count-1)
                timeServiceBegin(count) = serviceTime(count);
                timeServiceEnds(count) = timeServiceBegin(count) + serviceTime(count);
            end
        end
    end
end