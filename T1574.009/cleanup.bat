@echo off

sc stop "Example Service" >nul 2>&1
sc delete "Example Service" >nul 2>&1
del "C:\Program Files\program.exe" >nul 2>&1
del "C:\program.exe" >nul 2>&1
del "C:\Temp\download.txt" >nul 2>&1
del "C:\users\alfred.v\Downloads\cpp_poc_64.exe" >nul 2>&1
