function [ visibility ] = GetVisibility( cityLocation )

pathLength = GetPathLength(path, cityLocation); % vilken path vill vi anv?nda? ska detta g?ras f?r alla st?der?
visibility = 1 / pathLength; 

end

