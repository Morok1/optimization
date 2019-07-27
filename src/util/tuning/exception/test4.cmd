cd ..\..
call .\javas
%JAVA11% tuning.exception.VariableTest
%JAVA12% tuning.exception.VariableTest
%JAVA12% "-Djava.compiler=NONE" tuning.exception.VariableTest
%JAVA13% tuning.exception.VariableTest
%JAVAH% tuning.exception.VariableTest
pause
