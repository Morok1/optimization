cd ..\..
call .\javas
%JAVA11% tuning.sorting.Sortable                         200000
%JAVA12% tuning.sorting.Sortable                         200000
%JAVA12% "-Djava.compiler=NONE" tuning.sorting.Sortable  200000
%JAVA13% tuning.sorting.Sortable                         200000 2nd
%JAVAH% tuning.sorting.Sortable                          200000 2nd
pause
