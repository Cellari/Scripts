@echo off
setlocal

REM Usable in cmd or Windows Task Scheduler to terminate unwanted processes

REM This script takes all arguments as a process to kill
FOR %%A IN (%*) DO (
	TASKKILL /F /IM %%A
	
	REM Ease on the rate of kills
	TIMEOUT /T 1
)