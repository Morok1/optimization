cd ..\..
call .\javas
%JAVA11% tuning.io.IOTest                        tuning\dict\long_lines
%JAVA12% tuning.io.IOTest                        tuning\dict\long_lines
%JAVA12% "-Djava.compiler=NONE" tuning.io.IOTest tuning\dict\long_lines
%JAVA13% tuning.io.IOTest                        tuning\dict\long_lines
%JAVAH% tuning.io.IOTest                         tuning\dict\long_lines
%JAVA11% tuning.io.IOTest                        tuning\dict\English.med
%JAVA12% tuning.io.IOTest                        tuning\dict\English.med
%JAVA12% "-Djava.compiler=NONE" tuning.io.IOTest tuning\dict\English.med
%JAVA13% tuning.io.IOTest                        tuning\dict\English.med
%JAVAH% tuning.io.IOTest                         tuning\dict\English.med
pause
