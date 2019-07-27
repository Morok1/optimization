cd ..\..
call .\javas
%JAVA11% tuning.loop.ExceptionDriven                           30000000 no
%JAVA12% tuning.loop.ExceptionDriven                           30000000 no
%JAVA12% "-Djava.compiler=NONE" tuning.loop.ExceptionDriven    20000000  no
%JAVA13% tuning.loop.ExceptionDriven                           30000000  no
%JAVAH% tuning.loop.ExceptionDriven                            20000000  no
pause
