function vec = div3even1(n)
vec = randi([0,50],1,n);

ev = vec(2:2:end);
disp(ev)


a = (rem(ev,3)== 0);
disp(a)

as = a.*ev;
disp(as)

b = nonzeros(as);  
disp(b)

out = transpose(b);
disp(out)

end
