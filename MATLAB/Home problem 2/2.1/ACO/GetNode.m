function [ newNode ] = GetNode(taboo, pheromoneLevel, visibility, alpha, beta)
 
nodeProbability = [];
startNode = taboo(end);
tabooSum = 0;
nCities = size(visibility, 1);
m = 1;
pSum = 0;

pheromoneSum = (pheromoneLevel^alpha) * (visibility^beta);

startNode
    for i = 1 : nCities
            pSum = pSum + (pheromoneLevel(startNode,i)^alpha * visibility(startNode, i)^beta);
    end
    pSum

    for j = 1 : nCities
        for k = 1 : length(taboo)
            tabooSum = tabooSum + (pheromoneLevel(j, taboo(k))^alpha * visibility(j, taboo(k))^beta);
        end
        nodeProbability(j) = (pheromoneLevel(startNode,j)^alpha) * (visibility(startNode,j)^beta)...
            / (pSum-tabooSum);
   
    end
    
       r = rand;
       probValue = nodeProbability(m);
   
       while(r < probValue)
            probValue = probValue + nodeProbability(m);
            m = m + 1;
        end
        newNode = m;
end


