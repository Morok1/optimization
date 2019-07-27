cd ..\..
call .\javas
%JAVA11% tuning.exception.TryCatchTimeTest
%JAVA12% tuning.exception.TryCatchTimeTest
%JAVA12% "-Djava.compiler=NONE" tuning.exception.TryCatchTimeTest 1000000
%JAVA13% tuning.exception.TryCatchTimeTest
%JAVAH% tuning.exception.TryCatchTimeTest
pause
