figure('Position',[0,0,1920,1080]);
file = argv(){1};
argv()

function result = accumulateColumns(table)
  nofColumns = columns(table);
  for i = 2:nofColumns-1
    table(:,i+1).+= table(:,i);
  endfor
  result = table(:,nofColumns);
endfunction

nofFiles = length(argv())

plotColor = 'krgbmckrgbmck';
for f = 1:nofFiles
  fileName = argv(){f};
  data = csvread(fileName);
  values = accumulateColumns(data);
  milisecondsInSecond = 1000;
  plot(data(:,1),values*milisecondsInSecond,sprintf( '%s', plotColor(f)))
  hold on;
endfor
xlabel ("frame");
ylabel ("ms");
legend (argv());

pause(10);

