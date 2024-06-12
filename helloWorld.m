function output = helloWorld()
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
    
    for count = 1:5
        randomNumber = 100*rand();
        fprintf('Random number: %d\n', randomNumber)
    end
end