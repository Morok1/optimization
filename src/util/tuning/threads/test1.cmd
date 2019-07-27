cd ..\..
call .\javas
%JAVA11% tuning.threads.ListTesting                         30
%JAVA12% tuning.threads.ListTesting                         30
%JAVA12% "-Djava.compiler=NONE" tuning.threads.ListTesting  30
%JAVA13% tuning.threads.ListTesting                         30
%JAVAH% tuning.threads.ListTesting                          30
pause
