cd ..\..
call .\javas
%JAVA11% tuning.exception.VariableTest2                        100000000
%JAVA12% tuning.exception.VariableTest2                        100000000
%JAVA12% "-Djava.compiler=NONE" tuning.exception.VariableTest2 10000000
%JAVA13% tuning.exception.VariableTest2                        100000000
%JAVAH% tuning.exception.VariableTest2                         10000000
pause
