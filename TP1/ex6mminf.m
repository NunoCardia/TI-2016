function [mmi,values] = ex6mminf(file)
    % Calcula a informacaoo mutua maxima entre o ficheiro 'file' e o ficheiro
    % saxriff.wav

    query = audioread('dados/saxriff.wav');
    query = query(:);
    quant = 7;
    d = 1 / (2^quant);
    alf = -1:d:1;
    query = query*2^quant;
    
    wav = audioread(file);
    wav = wav(:);
    wav = wav*2^quant;
    r = slidingWindow(query, wav, alf, floor(0.25 * length(query)));
    values = r;
    mmi = max(r);
end