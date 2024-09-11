*Explore the SAS Help Datasets by using data steps and statistics;

title '2003 Birth Weight Data';
proc contents data=sashelp.BirthWgt varnum;
   ods select position;
run;

title 'The First Five Observations Out of 100,000';
proc print data=sashelp.BirthWgt (obs=5);
run;
