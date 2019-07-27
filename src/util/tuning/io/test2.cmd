cd ..\..
call .\javas
%JAVA11% -debug tuning.io.TestTraceMethodCalls
%JAVA12% -Xdebug tuning.io.TestTraceMethodCalls
%JAVA12% -Xdebug "-Djava.compiler=NONE" tuning.io.TestTraceMethodCalls
%JAVA13% -debug tuning.io.TestTraceMethodCalls
%JAVAH% -debug tuning.io.TestTraceMethodCalls
pause
