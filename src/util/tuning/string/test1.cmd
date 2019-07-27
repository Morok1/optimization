cd ..\..
call .\javas
%JAVA11% tuning.string.WordCountComparison tt.txt
%JAVA12% tuning.string.WordCountComparison tt.txt
%JAVA12% "-Djava.compiler=NONE" tuning.string.WordCountComparison tt.txt
%JAVA13% tuning.string.WordCountComparison tt.txt
%JAVAH% tuning.string.WordCountComparison tt.txt
pause
