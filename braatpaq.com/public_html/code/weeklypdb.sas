 /*
    This program is designed to run weekly.
    The program will combine the most recent week's worth
    of PDB data into one library.

    The Trend job will use this data as input to update the
    TREND database.
 */

 options mprint mlogic symbolgen;

 %macro skip;
   %if %sysfunc(fileexist(/var/opt/local/perf/mxg/mvs/&site/&daydt)) %then
    %do;

      %put MemberName = &mem;
      %put DataDate   = &daydt;
      %put Site       = &site;

      libname dayofwk "/var/opt/local/perf/mxg/mvs/&site/&daydt";

      %if %sysfunc(exist(dayofwk.&mem)) %then %do;
        proc append base=week.&mem   data=dayofwk.&mem;
        run;
      %end;

    %end;
 %mend skip;

%macro make_week (mem,daydt,site);

       libname dayofwk "/var/opt/local/perf/mxg/mvs/&site/&daydt";
       libname week     "/var/opt/local/perf/mxg/mvs/&site/week";

        proc append base=week.&mem   data=dayofwk.&mem;
        run;

      libname dayofwk clear;

%mend make_week;

x "rm /var/opt/local/perf/mxg/mvs/car/week/*.sas*";
x "rm /var/opt/local/perf/mxg/mvs/fla/week/*.sas*";

data _null_;
 length membername $ 8;

 do lpar = 'car';

   do i = 7 to 1 by -1;
     thedate = date() - i;
     datadate = put(thedate, yymmddn8.);

     do membername = 'cics', 'jobsked', 'rmfintrv', 'tapemnts', 'type72',
                  'type70', 'asum70pr', 'asumdb2a', 'smfintrv';
       call execute('%make_week('|| membername ||','|| datadate ||','|| lpar ||')');
     end;
  end;
 end;

  do lpar = 'fla';

   do i = 7 to 1 by -1;
     thedate = date() - i;
     datadate = put(thedate, yymmddn8.);

     do membername = 'jobsked', 'rmfintrv', 'tapemnts', 'type72',
                  'type70', 'asum70pr', 'smfintrv';
       call execute('%make_week('|| membername ||','|| datadate ||','|| lpar ||')');
     end;
  end;
 end;

run;
