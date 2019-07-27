call %TESTROOT%\tuning\distrib\rmi\javabin
start %JAVABIN%\rmiregistry "-J-Djava.rmi.server.logCalls=false" "-J-Djava.security.policy=%TESTROOT%\tuning\distrib\rmi\policy" -J-cp -J%TESTROOT%
REM start %JAVABIN%\rmiregistry "-J-Djava.rmi.server.logCalls=true" "-J-Djava.security.policy=%TESTROOT%\tuning\distrib\rmi\policy" -J-cp -J%TESTROOT%
pause
start %JAVABIN%\java -cp %TESTROOT% "-Djava.rmi.server.logCalls=false" -Djava.security.policy=%TESTROOT%\tuning\distrib\rmi\policy tuning.distrib.rmi.ServerObjectImpl
REM start %JAVABIN%\java "-Djava.rmi.server.logCalls=true" -cp %TESTROOT% -Djava.security.policy=%TESTROOT%\tuning\distrib\rmi\policy tuning.distrib.rmi.ServerObjectImpl
