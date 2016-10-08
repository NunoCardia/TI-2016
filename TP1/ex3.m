%lena.bmp
imagem = imread('dados/Lena.bmp'); 
imagem = imagem(:);
createHist(imagem, 0:255);
title('Lena.bmp');
disp(entropia(imagem, 0:255));
pause;

%ct1.bmp
imagem = imread('dados/CT1.bmp');
imagem = imagem(:);
createHist(imagem, 0:255);
title('CT1.bmp');
disp(entropia(imagem, 0:255));
pause;

%binaria.bmp
imagem = imread('dados/Binaria.bmp'); 
imagem = imagem(:);
createHist(imagem, [0 255]);
title('Binaria.bmp');
disp(entropia(imagem, [0 255]));
pause;

%saxriff.wav
wav = audioread('dados/saxriff.wav');
wav = wav(:);
quant= 8; % este valor pode ser alterado
d = 1 / (2^quant);
alfabeto = -1:d:1;
createHist(wav, alfabeto);
title('saxriff.wav');
disp(entropia(wav,alfabeto));
pause;

%Texto.txt
file = fopen('dados/Texto.txt');
text = fscanf(file, '%s');
fclose(file);
text = text(:);     
englishAlphabet = ['a':'z' 'A':'Z'];
createHist(text, englishAlphabet);
title('texto.txt');
disp(entropia(text, englishAlphabet));
