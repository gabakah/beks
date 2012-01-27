
%include '/var/opt/local/perf/mxg/programs/fla_ftp.sas';

filename smf ftp "'OS.SMF.DAILY(-0)'"
	_flaftp
;

libname  pdb      '/var/opt/local/perf/mxg/daily/mvs/fla';
libname  spin     '/var/opt/local/perf/mxgwork/spin/fla';


 /* This section of code will prevent processing of DB2 data.
    We configured it this way because the input SMF OS.SMF.DAILY
    file does not contain any DB2 records (type 100-102) and we
    don't want to create any empty datasets.
 */

 %let mackeep =
      _ndb2
      macro _sdb2    %
 ;

%include sourclib(buildpdb);

%include sourclib(asumjobs);
%include sourclib(asum70pr);
%include sourclib(asumtape);
%include sourclib(asumtmnt);
%include sourclib(asumsmfi);
%include sourclib(asum42ds);

