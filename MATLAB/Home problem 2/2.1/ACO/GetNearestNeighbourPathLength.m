function [ nearestNeighbourPathLength ] = GetNearestNeighbourPathLength( cityLocation )

nearestNeighbourPathLength = realmax;
totalPathLength = 0;

    for i = 1: size(cityLocation, 1)
        for j = 1: size(cityLocation,2) 
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

