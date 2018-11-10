function [ nextStep ] = NewtonRaphsonStep( xj, derivative, secondDerivative )

    nextStep = xj - (derivative/secondDerivative);

end

