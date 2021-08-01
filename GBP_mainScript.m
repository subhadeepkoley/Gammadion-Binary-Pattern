close all
clear
clc

img = imread('0001-1_NIR.bmp');
img = im2single(img);
if ndims(img) == 3
    img = rgb2gray(img);
end
img = imresize(img, [128, 128]);

window = [3, 3];
gbp1_img = nlfilter(img, window, @gbp1);
gbp2_img = nlfilter(img, window, @gbp2);
gbp3_img = nlfilter(img, window, @gbp3);
gbp4_img = nlfilter(img, window, @gbp4);

figure
subplot(151)
imshow(img, [])
title('Face Sample')
subplot(152)
imshow(gbp1_img, [])
title('GBP 1')
subplot(153)
imshow(gbp2_img, [])
title('GBP 2')
subplot(154)
imshow(gbp3_img, [])
title('GBP 3')
subplot(155)
imshow(gbp4_img, [])
title('GBP 4')