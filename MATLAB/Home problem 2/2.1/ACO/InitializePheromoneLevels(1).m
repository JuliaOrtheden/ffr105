function [ initLevel ] = InitializePheromoneLevels( numberOfCities, tau0 )

initLevel = zeros(numberOfCities, 1);

    for i = 1: numberOfCities
        initLevel(i) = numberOfCities/ tau0;
    end
end

