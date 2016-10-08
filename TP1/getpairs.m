function r = getpairs(v1)
    [p,q] = meshgrid(v1, v1); %vai buscar os elementos da n linha, ambas as colunas
    r = [p(:), q(:)]; %transforma p e q em arrays
end