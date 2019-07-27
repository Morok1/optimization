REM move to root directory
cd ..\..\..
REM compile Generate
C:\Java\jdk1.3\bin\javac tuning\distrib\custom\Generate.java
REM generate java files
C:\Java\jdk1.3\bin\java tuning.distrib.custom.Generate tuning.distrib.custom.ServerObject
REM compile all files
C:\Java\jdk1.3\bin\javac tuning\distrib\custom\*.java
pause
