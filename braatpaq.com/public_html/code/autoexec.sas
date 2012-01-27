 /* last updated: may 18, 2004.  change 22.063.                   */

 /* Last updated: Nov 02, 2004. Define MXG libraries. c00975      */

 /* example autoexec.sas for unix execution.  copy into your sas  */
 /* root directory, rename as autoexec.sas.                       */

 /* required filename/libname for mxg source, format, locations */
filename sourclib ('/usr/local/MXG/userid' '/usr/local/MXG/sourclib');
filename sasautos  '!sasroot/sasautos';
libname  library   '/usr/local/MXG/formats';


 /* recommended options, can be changed for performance */
options stimer;     /* can be nostimer.  prints elapsed time on log */
options fullstimer; /* can be nofullstimer.  prints cpu/memory on log*/
options sortseq=ascii; /*just for safety*/
options compress=yes;  /*ascii platforms faster elapsed, low cpu cost*/
options sortsize=400m; /*(80% of installed memory for performance)*/

 /* options to mimizes the diagnostics printed on sas log;   */
 /*  remove three "no" for full diagnosics to send to support@mxg.com*/
options source nosource2 nomprint nomlogic;

 /*below are mxg-required or mxg-very strongly recommended*/
 options yearcutoff=1960;
 options dkrocond=nowarn;
 options errors=2;
 options mautosource sasautos=(sourclib sasautos);
 %include sourclib(vmxginit); %vmxginit; run;

