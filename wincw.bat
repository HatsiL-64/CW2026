@echo off
set diaCompleto=%DATE%
set varDia=%diaCompleto:~0,2%_%diaCompleto:~3,2%
FOR /F %%i in ('dir /ad /b ^| find /c /v ""') do set nDir=%%i
set dirName=prac%nDir%-%varDia%
robocopy plantillaWeb %dirName% /E /NFL /NDL /NJH /NJS /nc /ns /np
cd %dirName%
echo Se creo y se cambio al directorio %dirName%

echo . > apunte%varDia%.txt 