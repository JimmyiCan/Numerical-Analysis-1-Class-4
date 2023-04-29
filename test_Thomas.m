function test_Thomas()
tol = 1e-4;
for i = 5:10 
    A = trid(i);
    b = randi(10,[i 1]);
    if rank(A) == i
        x_true = A\b;
        x_Thomas = Thomas(A,b);
        diff = abs(x_Thomas - x_true);
        for t = 1:i
            if isnan(x_Thomas(t))
                error('The random linear system is unavailable. Try again!\n')
            end
        end
        if diff < tol*ones(i,1)
           
        else
            fprintf('The maximum element of diff is %f.\n',max(diff(:)))
            disp(x_true)
            disp(x_Thomas)
            error('Error is too large\n')
        end    
    end
end
fprintf('\n')
fprintf('Thomas returns an accurate value.\n')
fprintf('\n')
end