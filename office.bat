@echo off
title PACOTE OFFICE
mode 76, 31
color 0f
:inicio
cls
echo ============================================================================
echo      ___________
echo     /           \
echo    /     _____   \                             __
echo   ^|     /     \   ^|     ______      ______    ^|__^|    ______     ______
echo   ^|    ^|       ^|  ^|    /      \    /      \    __    /   ___\   /  _   \
echo   ^|    ^|       ^|  ^|   ^|     ___^|  ^|     ___^|  ^|  ^|  ^|   /      ^|  /_\ __^|
echo   ^|    ^|       ^|  ^|  _^|    /___  _^|    /___   ^|  ^|  ^|   \___   ^|     /__
echo   ^|     \_____/   ^|  \     ___/  \     ___/   ^|__^|   \______/   \______/
echo    \             /    ^|   ^|       ^|   ^|
echo     \___________/     ^|___^|       ^|___^|
echo.
echo ============================================================================
echo.
echo [W]ord                                 [P]ower Point
echo.
echo [E]xcel                                [R]etornar ao Menu
echo.
echo [A]ccess
echo.
echo ============================================================================
echo.
set /p op=Insira a opcao desejada: 
echo.

if /i %op% == w (goto:word)
if /i %op% == e (goto:excel)
if /i %op% == a (goto:access)
if /i %op% == p (goto:powerpoint)
if /i %op% == r (call menu.bat) else (goto:opInvalida)

:word
start winword.exe
goto inicio

:excel
start excel.exe
goto inicio

:access
start msaccess.exe
goto inicio

:powerpoint
start powerpnt.exe
goto inicio

:opInvalida
echo ============================================================================
echo.
echo                          Escolha uma opcao valida!
echo.
echo ============================================================================
echo.
pause
goto inicio