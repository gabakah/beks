/* This routine is used to copy the PDBs for the current day into
   the historical folders. We have set the maximum obs to 500000
   per dataset. This limit is temporary until we receive the required
   DASD
   Last modified          c00975                     11/15/2004      */

%macro cpy( pdb , site , daydt , histdt );

x "mkdir  -pv  /var/opt/local/perf/mxg/&pdb/&site/&daydt";
x "mkdir -pv /var/opt/local/perf/mxg/logs/&daydt";
x "rm     -rv  /var/opt/local/perf/mxg/&pdb/&site/&histdt";

libname daily "/var/opt/local/perf/mxg/daily/&pdb/&site";

libname dadte  "/var/opt/local/perf/mxg/&pdb/&site/&daydt";

* options obs = 500000;

proc copy in=daily out=dadte;
run;

%mend cpy;

data _null_;
  length ste bld $ 4;
  length thedate olddate 8.;

    thedate = date() - 1;           /* This date is for current data */
    olddate = thedate - 90;         /* This date is for historical data */
    d_date = put(thedate, yymmddn8.);
    h_date = put(olddate, yymmddn8.);

    do bld = 'mvs';
      do  ste = 'car', 'fla';
       call execute('%cpy('|| bld ||','|| ste ||','|| d_date ||','|| h_date ||')');
      end;
    end;

    do  bld = 'db2';
      do  ste = 'cims', 'fpca', 'onls', 'plnt';
        call execute('%cpy('|| bld ||',' || ste ||','|| d_date ||','|| h_date ||')');
      end;
    end;

    do  bld = 'cics';
      do  ste = 'cims', 'fpca', 'plnt';
         call execute('%cpy('|| bld ||',' || ste ||','|| d_date ||','|| h_date ||')');
      end;
    end;

   call symput('datadt', d_date);
run;
