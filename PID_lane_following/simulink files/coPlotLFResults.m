function coPlotLFResults(scenario,x,y)


% Overlay driver path and actual path
figure('Color','white');
ax1 = subplot(1,1,1);


plot(scenario,'Parent',ax1)
ylim([1300 1700])




line(ax1,x(:,1),...
     y(:,1),...
     'Color','red','LineWidth',1)
