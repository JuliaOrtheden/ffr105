tournamentSelectionParameter = 0.8;
tournamentSize = 5;
populationSize = 100;
mutationProbability = 0.025;
numberOfGenerations = 100;
copiesOfBestIndividual = 5;
fitness = zeros(populationSize, 1);
maximumFitness = 0.0; % Assumes non-negative fitness values!
bestPath = []; % The best path found through tournament selection

%Initialize city connections
cityLocation = LoadCityLocations;
nCities = size(cityLocation,1);
path = randperm(nCities);                
tspFigure = InitializeTspPlot(cityLocation,[0 20 0 20]); 

connection = InitializeConnections(cityLocation); 
PlotPath(connection,cityLocation,path); 

%Initialize population
population = InitializePopulation(populationSize, nCities);

%Main loop for creation of the new generations
for iGeneration = 1:numberOfGenerations

   

    for i = 1:populationSize
        path = population(i,:);
        fitness(i) = EvaluateIndividual(path, cityLocations);
        if (fitness(i) > maximumFitness)
            maximumFitness = fitness(i);
            bestPath = path;
            disp('best path');
            disp(maximumFitness);
            PlotPath(connection,cityLocation,bestPath);
        end
    end
   
    tempPopulation = population;
    
    for i = 1:populationSize
        selectedIndividual = TournamentSelect(fitness, tournamentSelectionParameter, tournamentSize)
        originalChromosome = population(selectedIndividual, :);
        mutatedChromosome = Mutate(originalChromosome,mutationProbability);
        tempPopulation(i,:) = mutatedChromosome;
        
    end
  
    population = InsertBestIndividual(tempPopulation,bestPath,copiesOfBestIndividual);
end
