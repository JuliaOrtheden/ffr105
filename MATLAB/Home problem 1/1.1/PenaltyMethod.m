function [] = PenaltyMethod()

clear all

stepLength = 0.0001;
threshold = 10^(-6);
penaltyValues = [1, 10, 100, 1000];
startingPoint = [1,2];
x1 = [];
x2 = [];

fprintf('%4s %6s %6s\n','mu', 'x1', 'x2');
for i=penaltyValues
    resultVector = GradientDescent(startingPoint, i, stepLength, threshold);
    mu = i;
    x1 = resultVector(1);
    x2 = resultVector(2);
    fprintf('%4d %6.3f %6.3f\n', mu, x1, x2);
end




end

