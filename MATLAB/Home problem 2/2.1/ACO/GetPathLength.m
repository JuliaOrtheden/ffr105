function [ pathLength ] = GetPathLength( path, cityLocation )

path
x = cityLocation(path,:);
fromPoint = x(end,:);
pathLength = 0;

    for i = 1:length(path)
        toPoint = x(i,:);
        pointDistance = [fromPoint; toPoint];
        pathLength = pathLength + pdist(pointDistance);
        fromPoint = toPoint;
    end
end



