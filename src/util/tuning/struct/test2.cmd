cd ..\..
call .\javas
%JAVA11% tuning.struct.TernarySearchTreeTest
%JAVA12% tuning.struct.TernarySearchTreeTest
%JAVA12% "-Djava.compiler=NONE" tuning.struct.TernarySearchTreeTest
%JAVA13% tuning.struct.TernarySearchTreeTest
%JAVAH% tuning.struct.TernarySearchTreeTest
pause
