function medianFitness = TestRun()

    clear all

    mutationProbability = [0.00, 0.02, 0.05, 0.10];
    fprintf('Mutation probability Median fitness\n');

    for i = mutationProbability
        fitnessValues = [];
        for j = 1: 100
            fitnessValues = [fitnessValues; FunctionOpt(i)];
        end
        %skriver ?ver samma array 4 ggr d?rf?r den inte minskar medianen
        tmpFitness = sort(fitnessValues);
        median = (tmpFitness(50) + tmpFitness(51)) / 2;
        fprintf('\n%.3f %15.4f', i, median);

    end

end
