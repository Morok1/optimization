cd ..\..
call .\javas
%JAVA11% tuning.cache.CacheTest2
%JAVA12% tuning.cache.CacheTest2
%JAVA12% "-Djava.compiler=NONE" tuning.cache.CacheTest2
%JAVA13% tuning.cache.CacheTest2
%JAVAH% tuning.cache.CacheTest2
pause
