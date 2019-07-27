REM move to root directory
cd ..\..\..
REM Start the name server
start C:\Java\jdk1.3\bin\tnameserv -ORBInitialPort 2255
pause
REM start the server
start C:\Java\jdk1.3\bin\java tuning.distrib.corba.ServerMain -ORBInitialPort 2255
REM pause
