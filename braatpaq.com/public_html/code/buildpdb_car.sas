
%include '/var/opt/local/perf/mxg/programs/car_ftp.sas';

filename smf ftp "'CPL.SMFDAILY.#08010(-0)'"
	_carftp
;

libname  pdb      '/var/opt/local/perf/mxg/daily/mvs/car';
libname  spin     '/var/opt/local/perf/mxgwork/spin/car';


 /* This section of code will prevent processing of DB2 data.
    We configured it this way because the input SMF file does
    not contain any DB2 records (type 100-102) and we don't want
    to create any empty datasets.
 */


 %let mackeep =
      _ndb2
      macro _sdb2      %

   ;

%include sourclib(buildpdb);

%include sourclib(asumjobs);
%include sourclib(asum70pr);
%include sourclib(asumtape);
%include sourclib(asumtmnt);
%include sourclib(asumsmfi);
%include sourclib(asum42ds);
