
 /* This job must be submitted with "AUTOEXEC.SAS".
    TC.TMONCICS.PROD.DETAIL.DAILY(0) must be expanded using
    Landmark TMON routines.
 */

%include '/var/opt/local/perf/mxg/programs/fla_ftp.sas'; /* Contains FTP parms */

filename monicics ftp "'PGN.SOS.TMONCICS.EXPAND'"
	_flaftp
;

libname  db2      '/var/opt/local/perf/mxg/daily/db2/fpca';
libname  spin     '/var/opt/local/perf/mxgwork/spin/fla';
libname  cics     '/var/opt/local/perf/mxg/daily/cics/fpca';

   %let pmontsk=cics;

   %let psucics=cics;

   %let ptmddb2 = db2;

   %let psuuow = db2;

%let mackeep =
  _ntmo2
  macro _wmontsk work.monitask  %
  macro _stmo2 _smontsk             %
  macro _noobs                             %
  macro _yesobs                           %

;

%include sourclib(typstmo2);


%let mackeep =
  MACRO _ltmddb2 db2.tmdbdb2 %
;


%include sourclib(asumuott);
* %include sourclib(asumcict);

run;
