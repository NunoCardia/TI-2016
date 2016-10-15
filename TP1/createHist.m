function h = createHist(P, A)

    P = P(:);
    h=zeros(length(A), 1);
    for k=1:length(A), 
        [i,j] = find(P==A(k));
        
        h(k) = length(i);
    end
    
    bar(h,1);

    set(gca, 'XTick', 1:length(A(:)), 'XTickLabel', A(:));

end