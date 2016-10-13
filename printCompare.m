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

plotColor = 'brgkmcyw';
for f = 1:nofFiles
  data = csvread(argv(){f});
  values = accumulateColumns(data);
  plot(data(:,1),values*1000,sprintf( '%s', plotColor(f)))
  hold on;
endfor
xlabel ("frame");
ylabel ("ms");
legend (argv());

pause(15);

