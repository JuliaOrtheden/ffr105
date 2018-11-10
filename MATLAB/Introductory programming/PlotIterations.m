function [ ] = PlotIterations( polynomialCoefficients, iterationValues )

    minRange = min(iterationValues)*0.9;
    maxRange = max(iterationValues)*1.1;
    x = linspace(minRange,maxRange);
    y = Polynomial(x, polynomialCoefficients);
    plot(x, y);
    
    hold on
    plot(iterationValues, Polynomial(iterationValues, polynomialCoefficients),'o')
