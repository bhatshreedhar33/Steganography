function [im_out] = encode1( txt_bit,im_bit )

im_out=zeros(size(im_bit));
imsize=size(im_out);
for i=1:length(txt_bit)
    im_bit(i)=10*floor(im_bit(i)/10)+txt_bit(i);
end
    
% im_out(imsize(1),imsize(2),imsize(3))=pixtobit(length(txt_bit)/8);

for i=0:7
    last_bit = mod(im_bit, 10);
    im_out = im_out + last_bit * (2 ^ i);
    im_bit = floor(im_bit/10);
end
im_out(imsize(1),imsize(2),imsize(3))= length(txt_bit)/8;
figure(2)
imshow(uint8(im_out));
title('Encrypted Image');
imwrite(uint8(im_out),'f:\img001.png');
end


