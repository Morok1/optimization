cd ..\..
call .\javas
%JAVA11% tuning.hash.HashsizeTest
%JAVA12% tuning.hash.HashsizeTest
%JAVA12% "-Djava.compiler=NONE" tuning.hash.HashsizeTest
%JAVA13% tuning.hash.HashsizeTest
%JAVAH% tuning.hash.HashsizeTest
%JAVAH2% tuning.hash.HashsizeTest
pause
