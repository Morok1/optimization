cd ..\..
call .\javas
%JAVA11% tuning.profile.MemoryMonitor tuning.profile.ProfileTest
%JAVA12% tuning.profile.MemoryMonitor tuning.profile.ProfileTest
%JAVA13% tuning.profile.MemoryMonitor tuning.profile.ProfileTest
%JAVAH% tuning.profile.MemoryMonitor tuning.profile.ProfileTest
pause
