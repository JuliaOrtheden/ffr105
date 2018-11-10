function [ outputCoefficients ] = PolynomialDifferentiation( inputCoefficients, derivativeOrder )

    outputCoefficients = [];

    for i = (derivativeOrder+1) :length(inputCoefficients)
        currentCoefficient = inputCoefficients(i);
        prevIndex = i - 1;
        newCoefficient = currentCoefficient * (factorial(prevIndex)/(factorial(prevIndex-derivativeOrder)));
        outputCoefficients = [outputCoefficients; newCoefficient];
    end
end
