%kid.bmp
imagem = imread('kid.bmp');
imagem = imagem(:);
imagem = vec2mat(imagem, 2); %converter de vetor para matriz. matriz com n linhas e 2 colunas
figure(1);
subplot(3,2,1);
alf = getpairs(0:255);
createHistogram(imagem, alf);
disp(entropia(imagem, alf) / 2);
axis([0 5000 0 1000]);
title('kid.bmp');


%homer.bmp
im = imread('homer.bmp');
im = im(:);
im = vec2mat(im, 2);
figure(1);
subplot(3,2,2);
alf = getpairs(0:255);
createHistogram(im, alf);
disp(entropia(im, alf) / 2);
axis([0 750 0 100]);
title('homer.bmp');

%homerBin.bmp
im = imread('homerBin.bmp');
im = im(:);
im = vec2mat(im, 2);
figure(1);
subplot(3,2,3);
alf = getpairs([0 255]);
createHistogram(im, alf);
disp(entropia(im, alf) / 2);
title('homerBin.bmp');

%guitarSolo.wav
wav = audioread('guitarSolo.wav');
wav = wav(:);
wav = vec2mat(wav, 2);
quant = 7;
d = 1 / (2^quant);
figure(1);
subplot(3,2,4);
alf = getpairs(-1:d:1);
createHistogram(wav, alf);
disp(entropia(wav, alf) / 2);
axis([0 5000 0 75]);
title('guitarSolo.wav');

%englishAlphabet
englishAlphabet = ['a':'z' 'A':'Z'];
textFile = fopen('english.txt');
text = fscanf(textFile, '%s');
fclose(textFile);
text = text(:);
text = vec2mat(text, 2);    
figure(1);
subplot(3,2,5);
alf = getpairs(englishAlphabet);
createHistogram(text, alf);
disp(entropia(text, alf) / 2);
axis([0 300 0 35]);
title('englishAlphabet');
