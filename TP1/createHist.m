function h = createHist(P, A)

    P = P(:); %Transforma qualquer fonte num array
    h=zeros(length(A), 1); % h = array do tamanho de A e s?? com zeros
    for k=1:length(A), %at?? tamanho A
        [i,j] = find(P==A(k)); %i para a linha em que aparece e j para a coluna
        
        h(k) = length(i); %no array h que s?? tem zeros, vai guardando o n??mero de ocorr??ncias
    end
    
    bar(h,1);

    %set(gca, 'XTick', 1:length(A(:)), 'XTickLabel', A(:));

end