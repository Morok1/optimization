cd ..\..
call .\javas
%JAVA11% tuning.hash.SpecialKeyClass
%JAVA12% tuning.hash.SpecialKeyClass
%JAVA12% "-Djava.compiler=NONE" tuning.hash.SpecialKeyClass
%JAVA13% tuning.hash.SpecialKeyClass
%JAVAH% tuning.hash.SpecialKeyClass
pause
