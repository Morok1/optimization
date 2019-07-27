REM move to root directory
cd ..\..\..
REM generate java files from IDL
C:\Java\jdk1.3\bin\idlj -fall tuning\distrib\corba\ServerObject.idl
REM compile all files
C:\Java\jdk1.3\bin\javac tuning\distrib\corba\*.java
pause
