function output=mainSimulator()
    serviceType();
    serviceTime();
    interArrival();
    
    % Choosing what random geneartor to use
    valid=0;            
    printf('Which random generator would you choose?\n');
    printf('1.Linear Congruential Generator\n2.Uniformly Distributed Integer Generator\n3.Floor Generator\n');
    while (valid==0) % Error checking
        generatorChoice=input('');
        
        if(generatorChoice==1|generatorChoice==2|generatorChoice==3)
            valid=1;
           
        else
            printf('Invalid generator choice.Please reenter:\n');
            generatorChoice=input('');
        end             
    end
    
    
    % Generating random number for interval and service type based on service type
    if (generatorChoice==1) % Linear Congruential Generator      
        for count=1:customerNumber
            custRandServiceType(count)=round(mod(rand.*100,99)+1);
            customerRandInterval(count)=round(mod(rand.*100,99)+1);
        end
        
    elseif(generatorChoice==2) % Uniformly Distributed Integer
        for count=1:customerNumber
            custRandServiceType(count)=randi(1,100);
            customerRandInterval(count)=round(mod(rand.*100,99)+1);
        end
    elseif(generatorChoice==3) % Floor random generator
        for count=1:customerNumber
            custRandServiceType(count)=floor(99.*rand(1)+1);
            customerRandInterval(count)=round(mod(rand.*100,99)+1);
        end
    end
    
    
    valid=0;
    customerNumber=input('How many cars are there? Minimum 1 cars: ');
    while (valid==0)%Error checking
        if(customerNumber<1)
            printf('Minimum of 1 cars needed for simulation to work\n');
            customerNumber=input('How many cars are there? Minimum 1 cars ');
        else
            valid=1;
        end
    end
    %printf('Total of 3 wash bays are available');
    %valid=0;
    %sv1_counterNumberUsed=input('How many counters for registration service are open?: ');
    %while (valid==0)%Error checking
    %    if(sv1_counterNumberUsed<1||sv1_counterNumberUsed>2)
    %        printf('Only a maximum of two counters are operational\n');
    %        sv1_counterNumberUsed=input('How many counters are open?: ');
    %    else
    %        valid=1;
    %    end
    %end
    
    %Obtaining prefix of counter in use and not in use for service 1
    valid2=0;
    if(sv1_counterNumberUsed==1)
        while(valid2==0)
            valid=0;
            while valid==0
                sv1_counterNum1=input('Prefix of counter in use:');
                if(sv1_counterNum1==1|sv1_counterNum1==2)
                    valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
        
            valid=0;
            while valid==0
                sv1_counterNum2=input('Prefix of counter not in use:');
                if(sv1_counterNum2==1|sv1_counterNum2==2)
                    valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
            
            if(sv1_counterNum1==sv1_counterNum2)
                valid2=0;
                printf('Prefix cannot be the same please reenter again.\n');
            else
                valid2=1;
            end
        end
    end
    valid2=0;
    if(sv1_counterNumberUsed==2)
        while valid2==0
            valid=0;
            while valid==0
                sv1_counterNum1=input('Prefix of counter in use(A):');
                if(sv1_counterNum1==1|sv1_counterNum1==2)
                valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
        
            valid=0;
            while valid==0
                sv1_counterNum2=input('Prefix of counter in use(B):');
                if(sv1_counterNum2==1|sv1_counterNum2==2)
                    valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
        
            if(sv1_counterNum2==sv1_counterNum1)
                valid2=0;
                printf('Prefix cannot be the same please reenter again.\n');
            else
                valid2=1;
            end
        end
    end