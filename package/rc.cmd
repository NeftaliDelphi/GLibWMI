echo ***********************************************
echo      COMPILANDO RECURSOS de los componentes
echo ***********************************************
del glibwmires.res
del glibwmiSQLres.res

brcc32 glibwmires.rc > Errores.txt
brcc32 glibwmiSQLres.rc > Errores.txt
type Errores.txt
pause
