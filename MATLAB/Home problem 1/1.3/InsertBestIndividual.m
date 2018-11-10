function newPopulation = InsertBestIndividual( population, bestIndividual, nCopies )
 
tmpPopulation = population;

for i = 1: nCopies
    tmpPopulation(i,:) = bestIndividual;
end

newPopulation = tmpPopulation;