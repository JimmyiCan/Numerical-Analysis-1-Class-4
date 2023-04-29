function test_gause_partial_pivoting_3()  
tol = 1e-8;  
for n = 2:10
    A = randn(n,n);
    b = randn(n,1);
    x_true = A\b;   
    x_comp = gause_partial_pivoting(A, b); 
    diff = norm(x_true - x_comp);
    if (diff < tol)
      fprintf('Pass at %d!\n',n)
      fprintf('\n')
    else
      fprintf('Fail!\n')
    end
    fprintf('diff = %e\n', diff)
end
end
