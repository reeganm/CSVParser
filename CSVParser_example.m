%make a csv parser object
mycsv = CSVParser;

%make a string of data
mydata = '1,2,3,4,5';

%send string to parser
mycsv.string = mydata;

%parse
mycsv.parse;

%display data
disp(mycsv.data);

%change delimiter
mycsv.delimiter = ';';

%change data
mycsv.data = [ 1 2 3 4 5 6 7 8 9 ];

%build csv string
mycsv.build();

%display string
disp(mycsv.string);