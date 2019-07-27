cd ..\..
call .\javas
%JAVA12% tuning.sorting.Flashsort1
%JAVA12% "-Djava.compiler=NONE" tuning.sorting.Flashsort1
%JAVA13% tuning.sorting.Flashsort1
%JAVAH% tuning.sorting.Flashsort1
pause
