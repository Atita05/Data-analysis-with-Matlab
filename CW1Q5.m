xmin = 10;
xmax = 35;
r = (xmax-xmin).*rand(5000,1)+xmin;
ymin = 10;
ymax = 35;
r1 = (ymax-ymin).*rand(5000,1)+ymin;
plot(r,r1,'g');
xlim  ([-10 40])
ylim  ([-5 40])

hold on;

xmean = 2;
rx = xmean+ sqrt(1).*randn(5000,1);
ymean = 7;
ry = ymean+sqrt(1).*randn(5000,1);
plot(rx,ry,'r*')

legend('Uniform distribution','Normal Distribution')
xlabel('x axis')
ylabel('y axis')
hold off;