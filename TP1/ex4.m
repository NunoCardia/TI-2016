%Lena.bmp
imagem = imread('dados/Lena.bmp');
imagem = imagem(:);
h = hist(imagem, 0:255);
huf = hufflen(h);
disp(entropiaHuffman(h, huf));

%CT1.bmp
imagem = imread('dados/CT1.bmp');
imagem = imagem(:);
h = hist(imagem, 0:255);
huf = hufflen(h);
disp(entropiaHuffman(h, huf));

%binaria.bmp
imagem = imread('dados/Binaria.bmp');
imagem = imagem(:);
h = hist(imagem, [0 255]);
huf = hufflen(h);
disp(entropiaHuffman(h, huf));

%saxriff.wav
wav = audioread('dados/saxriff.wav');
wav = wav(:);
quant= 8; % este valor pode ser alterado
d = 1 / (2^quant);
alfabeto = -1:d:1;
h = hist(wav, alfabeto);
huf = hufflen(h);
disp(entropiaHuffman(h,huf));

%Texto.txt
file = fopen('dados/Texto.txt');
text = fscanf(file, '%s');
fclose(file);
text = text(:);
Alphabet = ['a':'z' 'A':'Z'];
h = hist(text,Alphabet);
huf = hufflen(h);
disp(entropiaHuffman(h, huf));

