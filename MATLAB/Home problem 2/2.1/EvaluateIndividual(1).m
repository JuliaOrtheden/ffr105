function fitness = EvaluateIndividual(path, cityLocations)

totalDistance = 0;
x = cityLocations(path,:);
fromPoint = x(end,:);
pathLength = length(x);

for i = 1:pathLength
    toPoint = x(i,:);
    pointDistance = [fromPoint; toPoint];
    totalDistance = totalDistance + pdist(pointDistance);
    fromPoint = toPoint;
end

fitness = 1 / totalDistance;
end

