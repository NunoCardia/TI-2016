r = zeros(7, 2);

for i=1:7
    [max_r,values] = ex6mminf(sprintf('dados/Song0%d.wav', i));
    r(i, 1) = max_r;
    r(i, 2) = i;
end

sortrows(r, -1);

for i=1:7
    fprintf('Song0%d.wav -> %f\n', r(i, 2), r(i, 1));
end