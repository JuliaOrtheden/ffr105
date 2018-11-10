function maximumFitness = FunctionOpt(mutationProbability)

    populationSize = 100;
    numberOfGenes = 50;
    crossOverProbability = 0.8;
    tournamentSelectionParameter = 0.75;
    variableRange = 10;
    numberOfGenerations = 100;
    fitness = zeros(populationSize, 1);
    tournamentSize = 4;
    numberOfVariables = 2;
    copiesOfBestIndividual = 1;


    population = InitializePopulation(populationSize, numberOfGenes);

    for iGeneration = 1:numberOfGenerations

        maximumFitness = 0.0; % Assumes non-negative fitness values!
        xBest = zeros(1,2); % [0,0]
        bestIndividualIndex = 0;

        for i = 1:populationSize
            chromosome = population(i,:);
            x = DecodeChromosome(chromosome, numberOfVariables, variableRange);
            decodedPopulation(i,:) = x;
            fitness(i) = EvaluateIndividual(x);
            if (fitness(i) > maximumFitness)
                maximumFitness = fitness(i);
                bestIndividual = chromosome;
                xBest = x;
            end
        end

        tempPopulation = population;

        for i = 1:2:populationSize
            i1 = TournamentSelect(fitness, tournamentSelectionParameter, tournamentSize);
            i2 = TournamentSelect(fitness, tournamentSelectionParameter, tournamentSize);
            chromosome1 = population(i1, :);
            chromosome2 = population(i2, :);

            r = rand;
            if (r < crossOverProbability)
                newChromosomePair = Cross(chromosome1,chromosome2);
                tempPopulation(i,:) = newChromosomePair(1,:);
                tempPopulation(i+1,:) = newChromosomePair(2,:);
            else
                tempPopulation(i,:) = chromosome1;
                tempPopulation(i+1,:) = chromosome2;
            end
        end

        for i = 1:populationSize
            originalChromosome = tempPopulation(i,:);
            mutatedChromosome = Mutate(originalChromosome,mutationProbability);
            tempPopulation(i,:) = mutatedChromosome;
        end

        population = InsertBestIndividual(tempPopulation,bestIndividual,copiesOfBestIndividual);  


    end % Loop over generations
end

