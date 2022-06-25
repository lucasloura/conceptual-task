@echo off
title APLICATIVOS ^DO WINDOWS
mode 94, 31
color 0f
:inicio
cls
echo ==============================================================================================
echo   ______           ____
echo   \     ^|    _    ^|    ^|                          __
echo    ^|    ^|   / \   ^|    ^|   __    ____            ^|  ^|
echo    ^|    ^|  /   \  ^|    ^|  ^|__^|  ^|    \__     ____^|  ^|    ______    __         __    ______
echo    ^|    ^| /     \ ^|    ^|   __   ^|   _   ^|   /   _   ^|   /   _  \  ^|  \   _   /  ^|  /    __\
echo    ^|    ^|/   _   \^|    ^|  ^|  ^|  ^|  ^| ^|  ^|  ^|   / \  ^|  ^|   / \  ^|  \  \_/ \_/  /  ^|___  \__
echo    ^|        / \        ^|  ^|  ^|  ^|  ^| ^|  ^|  ^|   \_/  ^|  ^|   \_/  ^|   \    _    /    __/     ^|
echo    ^|       /   \       ^|  ^|__^|  ^|__^| ^|__^|   \______/    \______/     \__/ \__/     \______/
echo    ^|      /     \      ^|
echo    ^|_____/       \____/
echo.
echo ==============================================================================================
echo.
echo [C]alculadora                                    [P]aint
echo.
echo [T]eclado Virtual                                [B]loco de Notas
echo.
echo [W]indows Explorer                               [R]etornar ao Menu
echo.
echo ==============================================================================================
echo.
set /p op=Insira a opcao desejada: 
echo.

if /i %op% == c (goto:calculadora)
if /i %op% == t (goto:teclado)
if /i %op% == w (goto:explorer)
if /i %op% == p (goto:paint)
if /i %op% == b (goto:notas)
if /i %op% == r (call menu.bat) else (goto:opInvalida)

:calculadora
start calc.exe
goto inicio

:teclado
start osk.exe
goto inicio

:explorer
start explorer.exe
goto inicio

:paint
start mspaint.exe
goto inicio

:notas
start notepad.exe
goto inicio

:opInvalida
echo ==============================================================================================
echo.
echo                                    Escolha uma opcao valida!
echo.
echo ==============================================================================================
echo.
pause
goto inicio