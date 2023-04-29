function test_gause_partial_pivoting_2()  
tol = 1e-8;    
A = hankel([1;1;1;1;1]);
b = [1 2 3 4 5]';
x_true = A\b;  
x_comp = gause_partial_pivoting(A, b);     
diff = norm(x_true - x_comp);
fprintf(' diff = %e\n', diff)
if (diff < tol)
    fprintf('Pass!\n')
else
    fprintf('Fail!\n')
end
end