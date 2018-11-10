function [ visibility ] = GetVisibility( cityLocation )
    
    nCities =size(cityLocation,1);
    visibility = zeros(nCities, nCities);
    pathLength = 0;

    for row = 1: nCities
        for col = 1: nCities
            fromNode = cityLocation(row,:);
            toNode = cityLocation(col,:);
            path = [fromNode; toNode];
            %pathLength = pathlength + GetPathLength(path, cityLocation);
            pathLength = pathLength + pdist(path);
            visibility(row,col) = 1 / pathLength; 
        end
    end

end

