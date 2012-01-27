
 /*
    This job must be submitted with the standard "AUTOEXEC.SAS".
 */

%include '/var/opt/local/perf/mxg/programs/car_ftp.sas'; /* Contains FTP parms */

filename monicics ftp "'CPL.SRY.TMONCICS.CIMS.EXPAND'"
	_carftp
;

libname  db2      '/var/opt/local/perf/mxg/daily/db2/cims';
libname  spin     '/var/opt/local/perf/mxgwork/spin/car';
libname  cics     '/var/opt/local/perf/mxg/daily/cics/cims';


   %let pmontsk=cics;

   %let psucics=cics;

   %let pdb2acc = db2;

   %let psuuow = db2;

%let mackeep =
  _ntmo2
  macro _wmontsk work.monitask  %
  macro _stmo2 _smontsk             %
  macro _noobs                             %
  macro _yesobs                           %

;
%include sourclib(typstmo2);
%include sourclib(asumuowt);
%include sourclib(asumcicx);
run;
