function [ currentPoint ] = GradientDescent( startingPoint, penaltyValue, stepLength, threshold )

currentPoint = startingPoint;
constraint = true;

    while (constraint)
        gradient = Gradient(currentPoint(1), currentPoint(2), penaltyValue);
        nextStep = currentPoint - (stepLength * gradient);
        currentPoint = nextStep;

        constraint = (norm(gradient) > threshold);
    end
end

