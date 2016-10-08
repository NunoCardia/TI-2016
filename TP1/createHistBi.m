function h = createHistBi(P, A)

    %P = P(:); %Transforma qualquer fonte num array
    h=zeros(length(A), length(A)); % h = matriz A * A com zeros
    for k=1:length(A), %até tamanho A
        for j=1:length(A),
            if A(k,j) == P(k,j)
                h(k,j) = h(k,j) + 1;
        end
    end
    
    mesh(h);

    set(gca, 'XTick', 1:length(A(:)), 'XTickLabel', A(:));

end