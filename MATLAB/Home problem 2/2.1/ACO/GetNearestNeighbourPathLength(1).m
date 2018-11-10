function [ nearestNeighbourPathLength ] = GetNearestNeighbourPathLength( cityLocation )

nearestNeighbourPathLength = realmax;
totalPathLength = 0;

    for i = 1: cityLocation
        for j = 1: cityLocation %hur plockar vi ut grannarnakanterna till noden? 
            fromPoint = cityLocation(i, :);
            toPoint = cityLocation(j, :);
            path = [fromPoint; toPoint];
            pathLength = GetPathLength(path, cityLocation);
            
            if(pathLength < nearestNeighbourPathLength)
                nearestNeighbourPathLength = pathLength;
            end
        end
        totalPathLength = totalPathLength +  nearestNeighbourPathLength;
    end
end

