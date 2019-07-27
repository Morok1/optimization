cd ..\..
call .\javas
%JAVA11% tuning.loop.FileSearch                             c:\ .jara
%JAVA12% tuning.loop.FileSearch                             c:\ .jara
%JAVA12% "-Djava.compiler=NONE" tuning.loop.FileSearch      c:\ .jara
%JAVA13% tuning.loop.FileSearch                             c:\ .jara
%JAVAH% tuning.loop.FileSearch                              c:\ .jara
pause
