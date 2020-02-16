DIR *.* /B >PIC_NAME_LIST.TXT

@echo on

del /a /f /q "URL.txt" 2>nul

set targe=''
set prefix=https://cdn.jsdelivr.net/gh/AlvinKing/blog-PicGo@v1.0/jsDelivr/
setlocal enabledelayedexpansion
for /f   %%i in (PIC_NAME_LIST.TXT)  do (
set target= !prefix!%%i
echo !target! >> URL.txt
) 

pause