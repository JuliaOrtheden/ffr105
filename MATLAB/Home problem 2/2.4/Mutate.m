function mutatedPath = Mutate(paths, mutationProbability)

    mutatedPath = paths;
    for j = 1:length(paths)
        r = rand;
        if (r < mutationProbability)
            r2 = 1 + floor(rand * length(paths));
            tmp = mutatedPath(j);
            mutatedPath(j) = mutatedPath(r2);
            mutatedPath(r2) = tmp;
        end
    end

end

