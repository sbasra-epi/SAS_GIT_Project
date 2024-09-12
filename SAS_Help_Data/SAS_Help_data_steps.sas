*Explore the SAS Help Datasets by using data steps and statistics;

*
2003 Birth Weight Data Set
The Sashelp.BirthWgt data set contains 100,000 random observations about infant mortality in 2003 from the US National Center for Health Statistics. 
Each observation records infant death within one year of birth, birth weight, maternal smoking and drinking behavior, and other background characteristics of the mother.
Link: https://documentation.sas.com/doc/en/statug/15.2/statug_sashelp_sect004.htm
;

title '2003 Birth Weight Data';
proc contents data=sashelp.BirthWgt varnum;
   ods select position;
run;

title 'The First Five Observations Out of 100,000';
proc print data=sashelp.BirthWgt (obs=5);
run;


*Explore details of infant deaths in 2003 to get background characters of mom within the year.;

proc freq data=sashelp.BirthWgt;
	table SomeCollege*race*Married;
run;

proc means data=sashelp.birthwgt;
	var AgeGroup;
run;

*This is comment;

proc freq data=sashelp.BirthWgt;
	table Drinking;
run;
