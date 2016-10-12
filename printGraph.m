file = argv(){1};
data = csvread(file);
header = strsplit(fgetl(fopen (file)),",")

length(data)
columns(data)
data(1,1)
#plot(data(:,1),data(:,2))
for i = 2:columns(data)-1
  data(:,i+1).+= data(:,i);
endfor

plotColor = 'brgkmcyw';
for i = 2:columns(data)-1
  area(data(:,1),data(:,columns(data)+1-i).*1000,"FaceColor",sprintf( '%s', plotColor(i-1)),"EdgeColor",sprintf( '%s', plotColor(i-1)));
  hold on;
endfor
xlabel ("frame");
ylabel ("ms");
legend (flip(header(2:columns(data)-1)));
pause(10)
