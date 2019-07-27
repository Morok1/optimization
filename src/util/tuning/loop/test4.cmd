cd ..\..
call .\javas
%JAVA11% -mx32M tuning.loop.ExceptionDriven                    2000000
%JAVA12% tuning.loop.ExceptionDriven                           2000000
%JAVA12% "-Djava.compiler=NONE" tuning.loop.ExceptionDriven    2000000
%JAVA13% tuning.loop.ExceptionDriven                           2000000
%JAVAH% tuning.loop.ExceptionDriven                            2000000
pause
