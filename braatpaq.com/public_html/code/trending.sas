options source source2 mlogic symbolgen;

%macro trend_car(site);
libname week "/var/opt/local/perf/mxg/mvs/&site/week";
libname trend "/var/opt/local/perf/mxg/mvs/&site/trend";

%include sourclib(trndcics);
%include sourclib(trndjobs);
%include sourclib(trndrmfi);
%include sourclib(trndsmfi);
%include sourclib(trndtmnt);
%include sourclib(trnd70);
%include sourclib(trnd70pr);
%include sourclib(trnd72);
%include sourclib(trnddb2a);
run;

libname week clear;
libname trend clear;

%mend trend_car;

%trend_car(car);

%macro trend_fla(site);
libname week "/var/opt/local/perf/mxg/mvs/&site/week";
libname trend "/var/opt/local/perf/mxg/mvs/&site/trend";

%include sourclib(trndjobs);
%include sourclib(trndrmfi);
%include sourclib(trndsmfi);
%include sourclib(trndtmnt);
%include sourclib(trnd70);
%include sourclib(trnd70pr);
%include sourclib(trnd72);
run;

libname week clear;
libname trend clear;

%mend trend_fla;

%trend_fla(fla);

