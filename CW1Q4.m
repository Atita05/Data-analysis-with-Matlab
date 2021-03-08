function out = div3even(n)
vec = randi([0,50],1,n);

ev = vec(2:2:end);


a = (rem(ev,3)== 0);

as = a.*ev;

b = nonzeros(as);  

out = transpose(b);

end
