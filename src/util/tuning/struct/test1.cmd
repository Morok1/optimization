cd ..\..
call .\javas
%JAVA11% tuning.struct.TypeTesting                        100
%JAVA12% tuning.struct.TypeTesting                        100
%JAVA12% "-Djava.compiler=NONE" tuning.struct.TypeTesting 100
%JAVA13% tuning.struct.TypeTesting                        100
%JAVAH% tuning.struct.TypeTesting                         100
pause
