function test = TestInsertBestIndividual()

    population = rand(10,1);
    error = false;
    
    fprintf('Test of InsertBestIndividual')
    %Should generate a 4 in the beginning of the population
    answer = InsertBestIndividual(population, 4, 1);
    if not(answer(1)== 4)
        fprintf('error in answer');
        error = true;
    end

    %Should generate 2 4's in the beginning
    answer = InsertBestIndividual(population, 4, 2);
    if not(all(answer(1:2) == 4) || not(isequal(population(2:end), answer(2:end))))
        fprintf('error in answer');
        error = true;
    end
    
    if(not(error))
      fprintf('\n all good');
    end
    

end
