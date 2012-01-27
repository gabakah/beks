
%include '/var/opt/local/perf/mxg/programs/fla_ftp.sas'; /* Contains FTP parms */

filename tmdbin ftp "'PGN.SOS.TMONDB2.EXPAND'"
	_flaftp
;

libname  db2      '/var/opt/local/perf/mxg/daily/db2/fpca';

 /* These %let statements should force the TMON DB2 data to
    be written to the db2 dataset name                     */

 %let ptmdda  = db2;
 %let ptmdda2 = db2;
 %let ptmddb  = db2;
 %let ptmddb2 = db2;
 %let ptmdde  = db2;
 %let ptmdde2 = db2;
 %let ptmddf  = db2;
 %let ptmddr  = db2;
 %let ptmdba  = db2;
 %let ptmdbb  = db2;
 %let ptmdbc  = db2;
 %let ptmdbd  = db2;
 %let ptmdbd0 = db2;
 %let ptmdbe  = db2;
 %let ptmdbf  = db2;
 %let ptmdbg  = db2;
 %let ptmdbh  = db2;
 %let ptmdbi  = db2;
 %let ptmdbj  = db2;
 %let ptmdbk  = db2;
 %let ptmdbl  = db2;
 %let ptmdbm  = db2;
 %let ptmdbt  = db2;
 %let ptmddab = db2;
 %let ptmddaf = db2;
 %let ptmddbb = db2;
 %let ptmddbf = db2;
 %let ptmddbk = db2;
 %let ptmddbr = db2;
 %let ptmddc  = db2;
 %let ptmddd  = db2;
 %let ptmddw  = db2;
 %let ptmdd6  = db2;
 %let ptmdd6b = db2;
 %let ptmdd6s = db2;
 %let ptmdd7  = db2;
 %let ptmdd7b = db2;
 %let ptmdd7p = db2;


 %let mackeep=
  _ntmdb
  macro _wtmddb2 tmdbdb2 %
  macro _wtmdd6  tmdbd6  %
  macro _wtmdd7  tmdbd7  %
  macro _stmdb   _stmddb2 _stmdd6 _stmdd7 %
  ;

%include sourclib(typstmdb);
