function population = InitializePopulation( pathSize, nCities )

    population = zeros(pathSize, nCities);
    
    for i = 1:pathSize
            population(i,:) = randperm(nCities);
    end

end

