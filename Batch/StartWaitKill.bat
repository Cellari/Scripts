@echo off
setlocal

REM Usable in cmd or Windows Task Scheduler to perform start, timeout and taskkill commands
REM The process to start does not have to be the same that is killed

set argC=0
FOR %%A IN (%*) DO SET /A argC+=1

IF %argC%==3 (
	START /B "" %1
	TIMEOUT /T %2 
	TASKKILL /F /IM %3
) ELSE (
	ECHO Script needs 3 arguments:
	ECHO 	1st is the application to start
	ECHO 	2nd is the wait timeout
	ECHO 	3rd is the task to kill after the timeout
	ECHO.
	ECHO You gave:
	FOR %%A IN (%*) DO (ECHO 	%%A)
)

EXIT /b 0