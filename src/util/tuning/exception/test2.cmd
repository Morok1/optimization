cd ..\..
call .\javas
%JAVA11% tuning.exception.TryCatchCostTest
%JAVA12% tuning.exception.TryCatchCostTest
%JAVA12% "-Djava.compiler=NONE" tuning.exception.TryCatchCostTest
%JAVA13% tuning.exception.TryCatchCostTest
%JAVAH% tuning.exception.TryCatchCostTest
pause
