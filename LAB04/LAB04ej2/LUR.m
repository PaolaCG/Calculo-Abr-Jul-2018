function [x] = LUR(L,U,b)
y = forsub(L,b);
x = backsub(U,y);