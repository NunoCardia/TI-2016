%kid.bmp
imagem = imread('kid.bmp');
imagem = imagem(:);
figure(1);
subplot(3,2,1);
h = createHist(imagem, 0:255);
huf = hufflen(h);
disp(entropiaHuffman(h, huf));
title('kid.bmp');

%homer.bmp
imagem = imread('homer.bmp');
imagem = imagem(:);
figure(1);
subplot(3,2,2);
h = createHist(imagem, 0:255);
huf = hufflen(h);
disp(entropiaHuffman(h, huf));
title('homer.bmp');

%homerBin.bmp
imagem = imread('homerBin.bmp');
imagem = imagem(:);
figure(1);
subplot(3,2,3);
h = createHist(imagem, [0 255]);
huf = hufflen(h);
disp(entropiaHuffman(h, huf));
title('homerBin.bmp');

%guitarSolo.wav
wav = audioread('guitarSolo.wav');
wav = wav(:);
quant= 8; % este valor pode ser alterado
d = 1 / (2^quant);
alfabeto = -1:d:1;
figure(1);
subplot(3,2,4);
h = createHist(wav, alfabeto);
huf = hufflen(h);
disp(entropiaHuffman(h,huf));
title('guitarSolo.wav');

%english.txt
file = fopen('english.txt');
text = fscanf(file, '%s');
fclose(file);
text = text(:);
englishAlphabet = ['a':'z' 'A':'Z'];
figure(1);
subplot(3,2,5);
h = createHist(text, englishAlphabet);
huf = hufflen(h);
disp(entropiaHuffman(h, huf));
title('english.txt');

