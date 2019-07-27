cd ..\..\..
call %TESTROOT%\tuning\distrib\rmi\javabin
REM %JAVABIN%\java -cp %TESTROOT% -Djava.security.policy=%TESTROOT%\tuning\distrib\rmi\policy tuning.distrib.rmi.ClientMain 50 -1
REM %JAVABIN%\java "-Djava.rmi.client.logCalls=true" "-Djava.rmi.server.logCalls=true" "-Djava.rmi.logCalls=true" -cp %TESTROOT% "-Djava.security.policy=%TESTROOT%\tuning\distrib\rmi\policy" tuning.distrib.rmi.ClientMain 1 -1
%JAVABIN%\java -Xbootclasspath:%TESTROOT%;c:\java\jdk1.2\jre\lib\rt.jar;c:\java\jdk1.2\jre\lib\i18n.jar -cp %TESTROOT% "-Djava.security.policy=%TESTROOT%\tuning\distrib\rmi\policy" tuning.distrib.rmi.ClientMain2 1 5
%JAVABIN%\java -Xbootclasspath:%TESTROOT%;c:\java\jdk1.2\jre\lib\rt.jar;c:\java\jdk1.2\jre\lib\i18n.jar -cp %TESTROOT% "-Djava.security.policy=%TESTROOT%\tuning\distrib\rmi\policy" tuning.distrib.rmi.ClientMain3 1 5
pause
