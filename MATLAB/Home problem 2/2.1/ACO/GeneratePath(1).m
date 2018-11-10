function [ path ] = GeneratePath(pheromoneLevel, visibility, alpha, beta)

path = (pheromoneLevel^alpha * visibility^beta)/sum(pheromoneLevel.^alpha * visibility.^beta); % set S??? 
end

