function [ ones, twos, a ] = guessHearts( a )
  b = a(:,:,1) > 60 & a(:,:,1) - a(:,:,2) > 5;
  sumb = sum(b(:));
  if sumb > 15000
    b = a(:,:,1) > 75 & a(:,:,1) - a(:,:,2) > 15;
  elseif sumb < 500
    b = a(:,:,1) > 10 & a(:,:,1) - a(:,:,2) > 5;
  end
  a = b;
  a = smallerisaac(a);
  [xs, ys] = size(a);
  ones = 0;
  twos = 0;
  j = 1;
  while j <= (ys-16)
    for i = 1:(xs-11)
      if i + 15 > xs || j + 24 > ys
        l = 1000;
      else
        l = heartMatch(a(i:i+11,j:j+20),2);
      end
      p = heartMatch(a(i:i+11,j:j+16),1);
      if l < 25
        j = j + 16;
        twos = twos + 1;
      elseif p < 15
        ones = ones + 1;
      end
    end
    j = j + 1;
  end
end

