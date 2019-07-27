cd ..\..
call .\javas
%JAVA11% tuning.cache.CacheTest
%JAVA12% tuning.cache.CacheTest
%JAVA12% "-Djava.compiler=NONE" tuning.cache.CacheTest
%JAVA13% tuning.cache.CacheTest
%JAVAH% tuning.cache.CacheTest
pause
