cd ..\..
call .\javas
%JAVA11% tuning.io.SerializationTest                         20000
%JAVA12% tuning.io.SerializationTest                         20000
%JAVA12% "-Djava.compiler=NONE" tuning.io.SerializationTest  20000
%JAVA13% tuning.io.SerializationTest                         20000
%JAVAH% tuning.io.SerializationTest                          20000
pause
