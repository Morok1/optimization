cd ..\..
call .\javas
%JAVA11% tuning.threads.CounterTest                         10000000
%JAVA12% tuning.threads.CounterTest                         10000000
%JAVA12% "-Djava.compiler=NONE" tuning.threads.CounterTest  10000000
%JAVA13% tuning.threads.CounterTest                         10000000
%JAVAH% tuning.threads.CounterTest                          10000000
pause
%JAVA11% tuning.threads.CounterTest                         10000000 no
%JAVA12% tuning.threads.CounterTest                         10000000 no
%JAVA12% "-Djava.compiler=NONE" tuning.threads.CounterTest  10000000 no
%JAVA13% tuning.threads.CounterTest                         10000000 no
%JAVAH% tuning.threads.CounterTest                          10000000 no
pause
