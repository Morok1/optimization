cd ..\..
call .\javas
%JAVA12% tuning.sorting.Flashsort2                         400000
%JAVA12% "-Djava.compiler=NONE" tuning.sorting.Flashsort2  400000
%JAVA13% tuning.sorting.Flashsort2                         400000
%JAVAH% tuning.sorting.Flashsort2                          400000
pause
