@echo off

@echo ===============================================
@echo ====      Borrando ficheros temporales     ====
@echo ===============================================
@echo == 	Archivos *.~*
@echo on
del *.~* /s /Q	
@echo == 	Archivos *.bak
del *.bak /s /Q	
@echo == 	Archivos *.old
del *.old /s /Q	
@echo == 	Ficheros *.ddp
del *.ddp /s /Q	
@echo == 	Ficheros *.dcu
del *.dcu /s /Q	
@echo == 	Ficheros *.bpl
del *.bpl /s /Q	
@echo == 	Ficheros *.dsk
del *.dsk /s /Q	
@echo == 	Ficheros *.local
del *.local /s /Q	
@echo == 	Ficheros *.map
del *.map /s /Q	
@echo == 	Ficheros *.tds
del *.tds /s /Q	
@echo == 	Ficheros *.exe de las demos
del .\demos\*.exe /s /Q	


echo ---------------------------------------------
@echo on
