function [ pathLength ] = GetPathLength( path, cityLocations )

x = cityLocations(path,:);
fromPoint = x(end,:);
pathLength = length(x);

    for i = 1:pathLength
        toPoint = x(i,:);
        pointDistance = [fromPoint; toPoint];
        pathLength = pathLength + pdist(pointDistance);
        fromPoint = toPoint;
    end
end



