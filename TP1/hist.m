function count = hist(P, A)
    % Conta o numero de ocorrencias em P
    % dos simbolos do alfabeto A.

    s = size(A);


    count = zeros(1, s(1)); % count = array do tamanho de A e só com zeros
    
	alf = intersect(unique(P, 'rows'), A, 'rows');
	h = size(alf);
	h = h(1);

    for i=1:h
        x = alf(i, :);

        if (s(2) > 1) %se a segunda linha tiver mais que uma coluna, ou seja ex5
            count(i) = sum(all(bsxfun(@eq, x, P),2)); %percorrer as 2 colunas, e usamos o operador binario bsxfun com @eq para descobrir quando é que x (elementos do alfabeto) == P (fonte)
        else
            count(i) = length(find(P == x));
        end
    end
    
    
end