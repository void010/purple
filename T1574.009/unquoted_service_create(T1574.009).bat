@echo off

echo Starting Execution

copy C:\users\alfred.v\Desktop\calc.exe "C:\Program Files\program.exe"
copy C:\users\alfred.v\Download\cpp_poc_64.exe "C:\program.exe"
sc create "Example Service" binpath= "C:\Program Files\program.exe" Displayname= "Example Service" start= auto
sc start "Example Service"

pause