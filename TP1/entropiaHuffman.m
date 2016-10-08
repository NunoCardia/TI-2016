function [ent] = entropiaHuffman(c, huf)
    ent = sum((c/sum(c)) .* huf);
end