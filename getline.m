function [l,detl]=getline()
a=0.33;
b=253.0;
pix=0:255;
l=((pix./255).^2.4).*(b-a)+a;

%detl=0.0594.*(1.219+l.^0.4).^2.5;
logl=log10(l);
index1=find(logl>=1.9);
index2=find(logl<1.9);
detl(index1)=logl(index1)-1.255;
detl(index2)=(0.249.*logl(index2)+0.65).^2.7-0.72;
detl=10.^detl;

% 
% a=zeros(1000,1000);
% a(:)=100;
% a(475:525,475:525)=105;
% a=uint8(a);
% figure,imshow(a);


 