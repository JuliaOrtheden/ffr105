function [ taboo ] = GeneratePath(pheromoneLevel, visibility, alpha, beta)

nCities = 1:50;
startNode = nCities(1 + fix(rand*length(nCities)));
taboo = [];
taboo(1) = startNode;
startIndex = 2;

while(length(taboo) <= length(nCities)) 
    newNode = GetNode(taboo, pheromoneLevel, visibility, alpha, beta)
    taboo(startIndex) = newNode;
    startIndex = startIndex + 1;
end
    taboo(nCities + 1) = taboo(1);
end

