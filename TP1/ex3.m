%kid.bmp
imagem = imread('kid.bmp'); 
imagem = imagem(:);
figure(1);
subplot(3,2,1);
createHist(imagem, 0:255);
title('kid.bmp');
disp(entropia(imagem, 0:255));

%homer.bmp
imagem = imread('homer.bmp');
imagem = imagem(:);
figure(1);
subplot(3,2,2);
createHist(imagem, 0:255);
title('homer.bmp');
disp(entropia(imagem, 0:255));

%homerBin.bmp
imagem = imread('homerBin.bmp'); 
imagem = imagem(:);
figure(1);
subplot(3,2,3);
createHist(imagem, [0 255]);
title('homerBin.bmp');
disp(entropia(imagem, [0 255]));

%guitarSolo.wav
wav = audioread('guitarSolo.wav');
wav = wav(:);
quant= 8; % este valor pode ser alterado
d = 1 / (2^quant);
alfabeto = -1:d:1;
figure(1);
subplot(3,2,4);
createHist(wav, alfabeto);
title('guitarSolo.wav');
disp(entropia(wav,alfabeto));

%english.txt
file = fopen('english.txt');
text = fscanf(file, '%s');
fclose(file);
text = text(:);     
englishAlphabet = ['a':'z' 'A':'Z'];
figure(1);
subplot(3,2,5);
createHist(text, englishAlphabet);
title('english.txt');
disp(entropia(text, englishAlphabet));
