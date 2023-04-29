function A = trid(n)
range = [1 30];
A = full(gallery('tridiag',n,randi(range,1,n-1),randi(range,1,n),randi(range,1,n-1)));
end