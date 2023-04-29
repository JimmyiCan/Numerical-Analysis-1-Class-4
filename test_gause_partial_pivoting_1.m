function test_gause_partial_pivoting_1()
tol = 1e-8;
A = ones(5) - eye(5);
b = ones(5,1);
x_true = A\b;  
x_comp = gause_partial_pivoting(A, b); 
diff = norm(x_true - x_comp);
fprintf('diff = %e\n', diff)
if (diff < tol)
    fprintf('Pass!\n')
else
    fprintf('Fail!\n')
end
end

