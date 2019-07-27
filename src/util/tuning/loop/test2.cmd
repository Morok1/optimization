cd ..\..
call .\javas
%JAVA13% tuning.loop.ConvertTest                          1000000

%JAVA11% tuning.loop.ConvertTest                          1000000
%JAVA12% tuning.loop.ConvertTest                          1000000
%JAVA12% "-Djava.compiler=NONE" tuning.loop.ConvertTest   100000
%JAVA13% tuning.loop.ConvertTest                          1000000
%JAVAH% tuning.loop.ConvertTest                           1000000
pause
