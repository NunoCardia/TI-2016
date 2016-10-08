function count = createHistogram(P, A)
    % Apresenta e devolve o histograma de ocorrencia dos simbolos
    % do alfabeto A na fonte de informacao P

    count = hist(P, A);

    %alf = intersect(unique(P, 'rows'), A, 'rows');
    
    bar(count);
    %set(gca, 'XTick', 1:length(alf(:)), 'XTickLabel', alf(:));    
end