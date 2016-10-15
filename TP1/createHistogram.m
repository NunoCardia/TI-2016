function count = createHistogram(P, A)
    % Apresenta e devolve o histograma de ocorrencia dos simbolos
    % do alfabeto A na fonte de informacao P

    count = hist(P, A);
    
    bar(count);
   
end