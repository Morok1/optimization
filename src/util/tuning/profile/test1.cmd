cd ..\..
call .\javas
%JAVA11% tuning.profile.ProfileTest
%JAVA11% -prof:prof11.log tuning.profile.ProfileTest
%JAVA12% tuning.profile.ProfileTest
%JAVA12% "-Xrunhprof:cpu=samples,file=prof12.log" tuning.profile.ProfileTest
%JAVA13% tuning.profile.ProfileTest
%JAVA13% "-Xrunhprof:cpu=samples,file=prof13a.log" tuning.profile.ProfileTest
%JAVA13% -Xprof tuning.profile.ProfileTest > prof13b.log
%JAVAH% tuning.profile.ProfileTest
%JAVAH% -Xprof tuning.profile.ProfileTest > profH.log
pause
