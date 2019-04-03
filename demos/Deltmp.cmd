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
@echo == 	Ficheros *.map
del *.map /s /Q	
del *.stat /s /Q	
del *.identcache /s /Q	
del *.tvsconfig /s /Q	
del *.dof /s /Q	

rm __history /S /Q

echo ---------------------------------------------
@echo on
