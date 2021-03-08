uxmin = -3;
uxmax = 5;
A = (uxmax-uxmin).*rand(10000,3) + uxmin;

 

allPositiveRows = all(A>0, 2);
A_pos = A(allPositiveRows, :);

 

v1 = A_pos(:,1);
v2 = A_pos(:,2);
v3 = A_pos(:,3);

 

v1norm = v1./sqrt(v1.^2+v2.^2+v3.^2)
v2norm = v2./sqrt(v1.^2+v2.^2+v3.^2)
v3norm = v3./sqrt(v1.^2+v2.^2+v3.^2)

 

scatter3(v1norm,v2norm,v3norm,'*','r');