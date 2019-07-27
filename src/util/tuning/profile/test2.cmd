cd ..\..
call .\javas
cp java\lang\Object116.class java\lang\Object.class
%JAVA11% -classpath .;%JAVA11DIR%\lib\classes.zip tuning.profile.ObjectCreationMonitoring -t tuning.profile.ProfileTest
cp java\lang\Object12.class java\lang\Object.class
%JAVA12% -Xbootclasspath:.;%JAVA12DIR%\jre\lib\rt.jar;%JAVA12DIR%\jre\lib\i18n.jar tuning.profile.ObjectCreationMonitoring -t tuning.profile.ProfileTest
cp java\lang\Object13.class java\lang\Object.class
%JAVA13% -Xbootclasspath/p:. tuning.profile.ObjectCreationMonitoring -t tuning.profile.ProfileTest
cp java\lang\Object12.class java\lang\Object.class
%JAVAH% -Xbootclasspath:.;%JAVAHDIR%\jre\lib\rt.jar;%JAVAHDIR%\jre\lib\i18n.jar tuning.profile.ObjectCreationMonitoring -t tuning.profile.ProfileTest 
del java\lang\Object.class
pause
