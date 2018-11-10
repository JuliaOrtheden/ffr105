function [ deltaPheromoneLevel ] = ComputeDeltaPheromonesLevels( pathCollection,pathLengthCollection )
    
    deltaPheromoneLevel = zeros(size(pathCollection,1), size(pathCollection,2));
    
    for i=1: size(pathCollection, 1)
        for j=1: size(pathCollection, 2)
        deltaPheromoneLevel(i, j) = 1 / pathLengthCollection(i);
        end
    end
end

