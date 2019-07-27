REM move to root directory
cd ..\..\..
REM compile all files
C:\Java\jdk1.3\bin\javac tuning\distrib\rmi\*.java
REM generate stubs and skeletons
C:\Java\jdk1.3\bin\rmic tuning.distrib.rmi.ServerObjectImpl
pause
