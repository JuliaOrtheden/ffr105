function [ initLevel ] = InitializePheromoneLevels( numberOfCities, tau0 )

initLevel = zeros(numberOfCities, numberOfCities);

    for i = 1: numberOfCities
        for j = 1: numberOfCities
            initLevel(i,j) = tau0;
        end 
    end
end

