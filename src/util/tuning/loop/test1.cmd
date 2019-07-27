cd ..\..
call .\javas
%JAVA11% tuning.loop.LoopIteratorTest                          100000000
%JAVA12% tuning.loop.LoopIteratorTest                          100000000
%JAVA12% "-Djava.compiler=NONE" tuning.loop.LoopIteratorTest   10000000
%JAVA13% tuning.loop.LoopIteratorTest                          100000000
%JAVAH% tuning.loop.LoopIteratorTest                           10000000
pause
