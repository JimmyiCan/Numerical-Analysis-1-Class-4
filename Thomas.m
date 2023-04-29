function x = Thomas(A,b)
n = length(b);
for i = 2:n
    A(i,i) = A(i,i) - A(i,i-1)/A(i-1,i-1)*A(i-1,i);
    b(i) = b(i) - A(i,i-1)/A(i-1,i-1)*b(i-1);
end
x = zeros(n,1);
for i = n:-1:1
    x(i) = (b(i) - A(i,i+1:n)*x(i+1:n))/A(i,i);
end
end