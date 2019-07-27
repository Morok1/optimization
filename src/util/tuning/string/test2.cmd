cd ..\..
call .\javas
%JAVA11% tuning.string.FilterComparison filter tt.txt x
%JAVA12% tuning.string.FilterComparison filter tt.txt x
%JAVA13% tuning.string.FilterComparison filter tt.txt x
%JAVAH% tuning.string.FilterComparison filter tt.txt x
pause
