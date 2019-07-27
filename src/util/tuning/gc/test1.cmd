cd ..\..
call .\javas
%JAVA11% tuning.gc.Test
%JAVA11% -verbosegc tuning.gc.Test
%JAVA12% tuning.gc.Test
%JAVA12% -verbosegc tuning.gc.Test
%JAVA13% tuning.gc.Test
%JAVA13% -verbosegc tuning.gc.Test
%JAVAH% tuning.gc.Test
%JAVAH% -verbosegc tuning.gc.Test
pause
