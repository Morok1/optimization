cd ..\..
call .\javas
%JAVA11% -mx64M tuning.string.Sorting 2
%JAVA12% tuning.string.Sorting 2
%JAVA13% tuning.string.Sorting 2
%JAVAH% tuning.string.Sorting 2
pause
