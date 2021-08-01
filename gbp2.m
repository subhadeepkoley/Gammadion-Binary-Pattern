function E = sbp2(X)
I1 = [X(1, 2) X(2, 3) X(2, 2) X(2, 1) X(3, 2)];
dfI1 = I1(2:end) - I1(1:end-1);
binNum = num2str(dfI1 >= 0);
E = bin2dec(binNum);
end