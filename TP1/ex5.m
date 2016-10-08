%Lena.bmp
imagem = imread('dados/Lena.bmp');
imagem = imagem(:);
imagem = vec2mat(imagem, 2); %converter de vetor para matriz. matriz com n linhas e 2 colunas
alf = getpairs(0:255);
createHistogram(imagem, alf);
disp(entropia(imagem, alf) / 2);
axis([0 3000 0 100]);
title('Lena.bmp');
pause;


%CT1.bmp
im = imread('dados/CT1.bmp');
im = im(:);
im = vec2mat(im, 2);
alf = getpairs(0:255);
createHistogram(im, alf);
disp(entropia(im, alf) / 2);
axis([0 8000 0 4000]);
title('CT1.bmp');
pause;

%Binaria.bmp
im = imread('dados/Binaria.bmp');
im = im(:);
im = vec2mat(im, 2);
alf = getpairs([0 255]);
createHistogram(im, alf);
disp(entropia(im, alf) / 2);
title('Binaria.bmp');
pause;

%saxriff.wav
wav = audioread('dados/saxriff.wav');
wav = wav(:);
wav = vec2mat(wav, 2);
quant = 7;
d = 1 / (2^quant);
alf = getpairs(-1:d:1);
createHistogram(wav, alf);
disp(entropia(wav, alf) / 2);
axis([0 2000 0 1000]);
title('saxriff.wav');
pause;

%texto.txt
englishAlphabet = ['a':'z' 'A':'Z'];
textFile = fopen('dados/Texto.txt');
text = fscanf(textFile, '%s');
fclose(textFile);
text = text(:);
text = vec2mat(text, 2);    
alf = getpairs(englishAlphabet);
createHistogram(text, alf);
disp(entropia(text, alf) / 2);
axis([0 250 0 25]);
title('Texto.txt');
