A = readmatrix('mondrian_1934.csv');
IA = mat2gray(A);
figure
imshow(IA)
B = readmatrix('side_husky.csv');
IB = mat2gray(B);
figure
imshow(IB)
[UA, SA, VA] = svd(A);
[UB, SB, VB] = svd(B);
nA = size(SA);
nB = size(SB);
n = min(nA(:));
p = min(nB(:));
SingularVector_A = zeros(n,1);
SingularVector_B = zeros(p,1);
for i = 1:n
    SingularVector_A(i) = SA(i,i);
end
for i = 1:p
    SingularVector_B(i) = SB(i,i);
end
index_A = 1:n;
index_B = 1:p;
figure
subplot(2,1,1)
plot(index_A,SingularVector_A,'linewidth',1.5)
hold on;
plot(index_B,SingularVector_B,'linewidth',1.5)
legend('Mondrian','Husky')
title('Singular values','FontSize',16)
hold off;

ln_SingularVector_A = log(SingularVector_A)./log(10);
ln_SingularVector_B = log(SingularVector_B)./log(10);

subplot(2,1,2)
plot(index_A,ln_SingularVector_A,'linewidth',1.5)
hold on;
plot(index_B,ln_SingularVector_B,'linewidth',1.5)
set(gca, 'YTick',[-10,-5,0,5])
set(gca, 'YTicklabel',{'1e-10','1e-5','1e0','1e5'})
axis([0 500 min(ln_SingularVector_A(:)) 5])
legend('Mondrian','Husky')
title('Singular values','FontSize',16)
hold off;

disp(rank(A))
disp(n)
disp(rank(B))
disp(p)

fprintf('The number of nonzero singular values of mondrian is %d.\n',n)
fprintf('The rank of mondrian is %d.\n',rank(A))
fprintf('The number of nonzero singular values of husky is %d.\n',n)
fprintf('The rank of husky is %d.\n',rank(B))

%Husky has 429 linearly independent column vectors, hence the rank of husky is
%429. The rank of a matrix has something to do with the corresponded
%picture, the more complex the pattern in the picture is, the higher the
%rank is. 

