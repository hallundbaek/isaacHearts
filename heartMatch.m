function [ error ] = heartMatch(image, amount)
  heart = [];
  if amount == 2
    heart = [0 1 1 1 1 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0;
             1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 0 0 0 0 0;
             1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0;
             1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
             0 1 1 1 1 1 0 0 0 1 1 1 1 0 0 0 1 1 1 1 0;
             0 0 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1;
             0 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1;
             0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1;
             0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0;
             0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 0 0 0;
             0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0;
             0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0];
  else
    heart = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
             0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
             0 0 0 1 1 1 1 0 0 0 1 1 1 1 0 0 0;
             0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0;
             0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0;
             0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0;
             0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0;
             0 0 0 0 0 1 1 1 1 1 1 1 0 0 0 0 0;
             0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0;
             0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0;
             0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
             0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
  end
  error = sum(sum(xor(heart, image)));
end

