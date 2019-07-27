cd ..\..
call .\javas
%JAVA11% tuning.exception.CastTest                        500000000
%JAVA12% tuning.exception.CastTest                        500000000
%JAVA12% "-Djava.compiler=NONE" tuning.exception.CastTest 5000000
%JAVA13% tuning.exception.CastTest                        50000000
%JAVAH% tuning.exception.CastTest                         5000000
pause
