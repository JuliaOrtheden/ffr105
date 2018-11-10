function [ deltaPheromoneLevel ] = ComputeDeltaPheromonesLevels( pathCollection,pathLengthCollection )
    
    deltaPheromoneLevel = 0;
    
    for i=1: length(pathCollection)
        deltaPheromoneLevel = deltaPheromoneLevel + (1 / pathLengthCollection(i));
    end
end

