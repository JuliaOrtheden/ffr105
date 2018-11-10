function iSelected = TournamentSelect( fitness, pTournament, tournamentSize )

    populationSize = length(fitness);
    iCandidates = zeros(1, tournamentSize);
    r = rand;
    
    for i = 1: tournamentSize
        iCandidates(i) = 1 + fix(rand*populationSize);
    end
    
    candidateFitness = fitness(iCandidates);
    
    [~, sortedIndexes]= sort(candidateFitness,'descend');
    
    for i = 1: sortedIndexes
        iSelected = iCandidates(i);
        if(r < pTournament)
            return;
        end
    end

end
