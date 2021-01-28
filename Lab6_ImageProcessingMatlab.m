
G = imread('ball.jpg');
F = rgb2gray(G);
%%% Writing %%%%%
imwrite(F,'ball_grey.jpg');
figure
subplot(2,3,1),imshow(G),title('Original')
subplot(2,3,2),imshow(F),title('Grayscale')

B = imread('ball_grey.jpg');



imwrite(F,'ball_grey_75.jpg','quality',75);
imwrite(F,'ball_grey_10.jpg','quality',10);
imwrite(F,'ball_grey_90.jpg','quality',90);
subplot(2,3,4),imshow('ball_grey_10.jpg'),title('Img Quality 10')
subplot(2,3,5),imshow('ball_grey_90.jpg'),title('Img Quality 90')
subplot(2,3,6),imshow('ball_grey_75.jpg'),title('Img Quality 75')

C = imsharpen(G);
figure;
imshow(C),title('Sharpen Img')

Z = imread('eight.tif')
imtool(Z)
J = imnoise(Z,'salt & pepper',0.02);
figure;
imshow(J)

J_8 = imnoise(B,'salt & pepper', 0.08);
Kaverage = filter2(fspecial('average',3),J_8)/255;
Kmedian = medfilt2(J_8);
figure;
imshowpair(Kaverage,Kmedian,'montage'), title('Average Filter        Median Filter');


%K=rgb2gray(I);
%imwrite(K,'ball_grey.jpg');
BW1 = edge(B,'sobel'); %edge detectors
BW2 = edge(B,'canny');
figure;
imshowpair(BW1,BW2,'montage'),title('sobel          canny');
imtool(B); %for distance