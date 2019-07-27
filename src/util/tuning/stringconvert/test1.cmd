cd ..\..
call .\javas
%JAVA11% -mx24M tuning.stringconvert.AppenderHelper
%JAVA12% tuning.stringconvert.AppenderHelper
%JAVA13% tuning.stringconvert.AppenderHelper
%JAVAH% tuning.stringconvert.AppenderHelper
pause
