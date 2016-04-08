data = zeros(5000);
for i = 0:4999
  a = imread(sprintf('./realData/data/%d.jpg',i));
  [ones, twos, img] = guessHearts(a);
  colormap(gray);
  subplot(1,2,1); imagesc(a); axis image;
  subplot(1,2,2); imagesc(img); axis image;
  data(i+1) = (ones + 1) * 10 + twos;
end
