cd ..\..
call .\javas
%JAVA11% tuning.loop.SwitchTest                                30000000
%JAVA12% tuning.loop.SwitchTest                                30000000
%JAVA12% "-Djava.compiler=NONE" tuning.loop.SwitchTest         3000000
%JAVA13% tuning.loop.SwitchTest                                30000000
%JAVAH% tuning.loop.SwitchTest                                 10000000
pause
