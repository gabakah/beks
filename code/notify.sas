/*
  This program is called when an MXG job fails.
  We do not send notifications if the jobs
  complete successfully.
*/

filename sm email 'reese.bailey@pgnmail.com'
              cc='howard.curtis@pgnmail.com'
         subject="MXG job &sysparm failed";

data _null_;
  thisday = put(date(), weekdate.);
  file sm;
  put "Job &sysparm failed today : " ;
  put thisday / ;
  put 'Programs are located in /var/opt/local/perf/mxg/programs';
  put 'Review the logs in /var/opt/local/perf/mxg/daily/logs';

run;
