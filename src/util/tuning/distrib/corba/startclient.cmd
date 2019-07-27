REM move to root directory
cd ..\..\..
REM run the client
C:\Java\jdk1.3\bin\java -Xbootclasspath/p:. tuning.distrib.corba.ClientMain -ORBInitialPort 2255 5 400
pause
