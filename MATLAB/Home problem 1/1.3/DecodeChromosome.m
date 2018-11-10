function x = DecodeChromosome( chromosome, nVariables, variableRange )

    m =  size(chromosome, 2);
    n = nVariables;
    k = m/n;
    x = zeros(1, nVariables);
    
    
    for i = 1: nVariables
         x(i) = 0.0;
        for j = 1:k
            x(i) = x(i) + chromosome(j + k*(i-1))*2^(-j);
        end
        x(i) = -variableRange + 2*variableRange*x(i)/(1 - 2^(-k));
    
    end

end

