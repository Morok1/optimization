cd ..\..
call .\javas
%JAVA11% tuning.loop.Factorial                                2000000
%JAVA12% tuning.loop.Factorial                                2000000
%JAVA12% "-Djava.compiler=NONE" tuning.loop.Factorial         200000
%JAVA13% tuning.loop.Factorial                                2000000
%JAVAH% tuning.loop.Factorial                                 2000000 2nd
pause
