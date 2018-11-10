function [ resultGradient ] = Gradient( x1, x2, mu )

dx1 = (2 * x1 -2 + 4 * mu * (x1^3) + 4 * mu * x1 * (x2^2) - 4 * mu * x1);  
dx2 = (4 * x2 - 8 + 4 * mu * (x2^3) + 4 * mu * x2 * (x1^2) - 4 * mu * x2);

constraint = ((x1^2 + x2^2 - 1) < 0);

    if (constraint)
        mu = 0;
        resultGradient = [dx1; dx2];
    else
        resultGradient = [dx1; dx2];
    end
end

