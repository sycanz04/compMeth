function output=mainSimulator()
    % Generating service time
    % For loop for polish wax service time
    fprintf('\n\n========================== SERVICE TIME TABLES ==========================\n\n');
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
    
    
     
    % Generate Interval Time
    % Set value for each column
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
    printf('| Inter-Arrival Time  |  Probability  |  CDF   | Range   |\n');
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
    
    fprintf('\n======================== END OF SERVICE TIME TABLES =======================\n\n');
    
    fprintf('\n\n============================= SIMULATION ==============================\n\n');
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
    seed1 = round(100*rand());
    seed2 = round(100*rand());
    valid = 0;
    while (valid == 0)
        if seed1 > seed2
            seed1 = round(100*rand());
            seed2 = round(100*rand());
        else
            seed(seed1, seed2);
            valid = 1;
        end
    end
        
    if (generatorChoice==1) % Freemat's built in rand function
        for count = 1:carNum
            if count == 1
                rnInterArrival(count) = 0;
            else
                rnInterArrival(count) = round(1 + (100 - 1) * rand()); % Generating random inter arrival time
            end
            rnServiceTime(count) = round(1 + (100 - 1) * rand()); % Generating random service time
            rnServiceType(count) = round(1 + (3 - 1) * rand()); % Generating random service type
        end
    
    elseif generatorChoice==2 % Linear Congruential Generator
        Xn = seed1;
        a = round(1 + (100 - 1) * rand()); % Randomly generating multiplier
        c = round(1 + (100 - 1) * rand()); % Randomly generating increment
        modulus = 100; % Initializing modulus value
        
        for count=1:carNum
            if count == 1
                rnInterArrival(count) = 0;
            else
                Xn = mod(a * Xn + c, modulus); % LCG formula
                rnInterArrival(count) = round(Xn + 1); % Generating random inter arrival time
            end
            Xn = mod(a * Xn + c, modulus);
            rnServiceTime(count) = round(Xn + 1); % Generating random service time
            Xn = mod(a * Xn + c, modulus);
            rnServiceType(count) = round(Xn + 1); % Generating random service type
        end
    end
    
    % Find inter arrival time
    for count = 1:carNum
        for i = 1:5
            if count == 1
                finalIntervalArrivalTim(count) = 0;
            else
                for i = 1:5
                    if rnInterArrival(count) >= iaFirstNum(i) && rnInterArrival(count) <= iaLastNum(i)
                        finalIntervalArrivalTime(count) = iaInterarrivalTime(i);
                        break;
                    end
                end
            end
        end
    end
    
    % Find Arrival Time
    for count = 1:carNum
        if count == 1
            arrivalTime(count) = 0;
        else
            arrivalTime(count) = arrivalTime(count - 1) + finalIntervalArrivalTime(count);
        end
    end
    
    % Initialising variables for service allocation
    bayAvailability = zeros(1, 3);
    serviceTime = zeros(1, carNum);
    timeServiceBegins = zeros(1, carNum);
    timeServiceEnds = zeros(1, carNum);
    assignedBays = zeros(1, carNum);
    waitingTime = zeros(1, carNum);
    timeInSystem = zeros(1, carNum);
    
    % Initialise variables to track events
    events = struct('type', {}, 'time', {}, 'car', {}); % Store events in a structure
    
    % Assign cars to wash bays
    for count = 1:carNum
        % Determine when the car arrives
        if count == 1
            events(end+1) = struct('type', 'arrival', 'time', arrivalTime(count), 'car', count);
        else
            events(end+1) = struct('type', 'arrival', 'time', arrivalTime(count), 'car', count);
        end
        
        % Find the earliest available bay
        [minAvailableTime, bayIdx] = min(bayAvailability);
        assignedBays(count) = bayIdx;
        
        % Determine the service time based on the assigned bay
        switch bayIdx
            case 1
                for i = 1:5
                    if rnServiceTime(count) >= wbOneFirstNum(i) && rnServiceTime(count) <= wbOneLastNum(i)
                        serviceTime(count) = wbOneServiceTime(i);
                        break;
                    end
                end
            case 2
                for i = 1:5
                    if rnServiceTime(count) >= wbTwoFirstNum(i) && rnServiceTime(count) <= wbTwoLastNum(i)
                        serviceTime(count) = wbTwoServiceTime(i);
                        break;
                    end
                end
            case 3
                for i = 1:5
                    if rnServiceTime(count) >= wbThreeFirstNum(i) && rnServiceTime(count) <= wbThreeLastNum(i)
                        serviceTime(count) = wbThreeServiceTime(i);
                        break;
                    end
                end
        end
        
        % Calculate the time service begin/ends, and waiting time
        if arrivalTime(count) > minAvailableTime
            timeServiceBegins(count) = arrivalTime(count);
        else
            timeServiceBegins(count) = minAvailableTime;
        end
        timeServiceEnds(count) = timeServiceBegins(count) + serviceTime(count);
        waitingTime(count) = timeServiceBegins(count) - arrivalTime(count);
        timeInSystem(count) = timeServiceEnds(count) - arrivalTime(count);
        
        % Update the availability of the assigned bay
        bayAvailability(bayIdx) = timeServiceEnds(count);
        
        % Store service start and end events
        events(end+1) = struct('type', 'service_start', 'time', timeServiceBegins(count), 'car', count);
        events(end+1) = struct('type', 'departure', 'time', timeServiceEnds(count), 'car', count);
    end
    
    % Display the final simulation table
    printf('\n\nOverall Simulation Table\n');
    printf('----------------------------------------------------------------------------------------\n');
    printf('| Car | RN Interval-arrival Time | Interval-arrival Time | Arrival Time | Service Type |\n');
    printf('----------------------------------------------------------------------------------------\n');
    for count=1:carNum
        fprintf('|  %d  |            %d            |          %d            |      %d       |       %d      |\n',[count, rnInterArrival(count), finalIntervalArrivalTime(count), arrivalTime(count), rnServiceType(count)]);
    end 
    printf('----------------------------------------------------------------------------------------\n');
    
    % Generate tables for each wash bay
    for bayIdx = 1:3
        bayCars = find(assignedBays == bayIdx);
        if ~isempty(bayCars)
            printf('\nWash Bay %d\n', bayIdx);
            printf('------------------------------------------------------------------------------------------------------------------\n');
            printf('| Car | RN Service Time | Time Service Begins | Service Time | Time Service Ends | Waiting Time | Time in System |\n');
            printf('------------------------------------------------------------------------------------------------------------------\n');
            for count = 1:length(bayCars)
                car = bayCars(count);
                printf('|  %d  |       %d        |         %d          |      %d       |        %d        |       %d       |        %d        |\n', car, rnServiceTime(car), timeServiceBegins(car), serviceTime(car), timeServiceEnds(car), waitingTime(car), timeInSystem(car));
            end
            printf('------------------------------------------------------------------------------------------------------------------\n');
        end
    end
    fprintf('\n========================= END OF SIMULATION ===========================\n\n');
    
    % Display status updates
    fprintf('\n\n=========================== SIMULATION LOGS ===========================\n\n');
    % Iterate through events and print status updates
    for i = 1:length(events)
        switch events(i).type
            case 'arrival'
                fprintf('Arrival of car %d at minute %d\n', events(i).car, events(i).time);
            case 'departure'
                fprintf('Departure of car %d at minute %d\n', events(i).car, events(i).time);
            case 'service_start'
                fprintf('Service for car %d started at minute %d\n', events(i).car, events(i).time);
        end
    end
    fprintf('\n======================= END OF SIMULATION LOGS ========================\n\n');
    
    % Evaluate the results of the simulation
    avgWaitingTime = mean(waitingTime);
    avgInterArrivalTime = mean(finalIntervalArrivalTime);
    avgArrivalTime = mean(arrivalTime);
    avgTimeSpent = mean(timeInSystem);
    probWait = sum(waitingTime > 0) / carNum;
    
    avgServiceTimeBay1 = mean(serviceTime(assignedBays == 1));
    avgServiceTimeBay2 = mean(serviceTime(assignedBays == 2));
    avgServiceTimeBay3 = mean(serviceTime(assignedBays == 3));
    
    fprintf('\n\n========================= SIMULATION RESULTS ==========================\n\n');
    fprintf('Average waiting time: %.2f minutes\n', avgWaitingTime);
    fprintf('Average inter-arrival time: %.2f minutes\n', avgInterArrivalTime);
    fprintf('Average arrival time: %.2f minutes\n', avgArrivalTime);
    fprintf('Average time spent in the system: %.2f minutes\n', avgTimeSpent);
    fprintf('Probability that a car owner has to wait: %.2f\n', probWait);
    fprintf('Average service time for Wash Bay 1: %.2f minutes\n', avgServiceTimeBay1);
    fprintf('Average service time for Wash Bay 2: %.2f minutes\n', avgServiceTimeBay2);
    fprintf('Average service time for Wash Bay 3: %.2f minutes\n', avgServiceTimeBay3);
    fprintf('\n===================== END OF SIMULATION RESULTS =======================\n\n');
end