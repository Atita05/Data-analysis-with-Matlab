% Read sales figures from a file and plot it
load salesfigs.dat %load the file data
asales = salesfigs(1,:);
bsales = salesfigs(2,:);
plot(asales,'ko')
hold on
plot(bsales,'k*')
xlabel('Quarter')
ylabel('Sales(billions)')
title('ABC Corporation Sales: 2013')
legend('Division A', 'Division B')
