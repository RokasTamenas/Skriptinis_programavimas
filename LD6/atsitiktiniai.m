function A = atsitiktiniai(x1, y1, n1)

arguments
    x1 (1,1) {mustBeInteger, mustBePositive}
    y1 (1,1) {mustBeInteger, mustBePositive}
    n1 (1,1) {mustBeInteger, mustBePositive}
end

A = randi(n1, x1, y1);
end