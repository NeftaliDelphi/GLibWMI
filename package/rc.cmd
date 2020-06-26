@echo off
echo ***********************************************
echo      COMPILANDO RECURSOS de los componentes
echo ***********************************************
del glibwmires.res
REM del glibwmiSQLres.res

"c:\Program Files (x86)\Embarcadero\Studio\20.0\bin\brcc32.exe" glibwmires.rc > Errores.txt
REM brcc32 glibwmiSQLres.rc > Errores.txt
type Errores.txt
pause
