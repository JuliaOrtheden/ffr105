function [ iterationValues ] = NewtonRaphson( polynomialCoefficients, startingPoint, tolerance )


done = false;
iterationValues = [ startingPoint ];
currentStep = startingPoint;

firstDerivative = PolynomialDifferentiation(polynomialCoefficients, 1);
secondDerivative = PolynomialDifferentiation(polynomialCoefficients, 2);

if (isempty(secondDerivative)|| all(secondDerivative == 0))
    fprintf('Error: The degree of the polynomial must be 2 or larger');
    iterationValues = [ ];
    return;
end

    while not(done) 
    
        firstOrderResult = Polynomial(currentStep, firstDerivative);
        secondOrderResult = Polynomial(currentStep, secondDerivative);
        nextStep = NewtonRaphsonStep(currentStep, firstOrderResult, secondOrderResult);
        iterationValues = [iterationValues; nextStep];
        difference = (nextStep - currentStep);
        currentStep = nextStep;
        
        done = (abs(difference) < tolerance);
    
    end
    
end

