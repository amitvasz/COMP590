src = imread('../img/fish.jpg');
dst = imread('../img/underwater.jpg');

w = size(src, 1);
h = size(src, 2);

load('mask.mat');

for i = 1:w
    for j = 1:h
        if mask(i, j)
            dst(i, j, :) = src(i, j, :);
        end
    end
end

imwrite(dst, '../img/binary.jpg');
