@echo off
title LOGIN
mode 75, 25
color 0f
:inicio
cls
echo ===========================================================================
echo        ________      ______
echo       /  ____  \     \     ^|
echo      ^|  /    \  ^|     ^|    ^|                              __    ____
echo      ^|  ^|    ^|  ^|     ^|    ^|       ______      _______   ^|__^|  ^|    \__
echo      ^|__^|____^|__^|     ^|    ^|      /   _  \    /   _   ^|   __   ^|   _   ^|
echo     /            \    ^|    ^|     ^|   / \  ^|  ^|   / \  ^|  ^|  ^|  ^|  ^| ^|  ^|
echo    ^|      __      ^|   ^|    ^|     ^|   \_/  ^|  ^|   \_/  ^|  ^|  ^|  ^|  ^| ^|  ^|
echo    ^|     \  /     ^|   ^|    ^|____  \______/    \___    ^|  ^|__^|  ^|__^| ^|__^|
echo    ^|     /__\     ^|   ^|         /           /^|___/   /
echo    ^|______________^|   ^|________/            \_______/
echo.
echo ===========================================================================
echo.
set /p usuario=Insira o usuario: 
echo.
set /p senha=Insira a senha: 
echo.

if /i %usuario% == fatec (
	if %senha% == 123 (
		call menu.bat) else (goto:dadosInvalidos)) else (goto:dadosInvalidos)

:dadosInvalidos
echo ===========================================================================
echo.
echo                          usuario ou senha invalidos!
echo.
echo ===========================================================================
echo.
pause
goto inicio