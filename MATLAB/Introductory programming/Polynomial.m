function [ resultFunction ] = Polynomial( x, coefficients )

    resultFunction = 0;

    for i = 1:length(coefficients)
        resultFunction = resultFunction + coefficients(i)* x.^(i-1);
    end

end

