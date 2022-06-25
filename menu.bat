@echo off
title MENU
mode 88, 31
color 0f
:inicio
cls
echo ========================================================================================
echo    ___   _________________    ______         _____
echo   ^|   ^| ^|                 ^|  \      \       /     ^|
echo   ^|___^| ^|_________________^|   ^|      \     /      ^|               ____
echo    ___   _________________    ^|       \   /       ^|    ______    ^|    \__    ___   __
echo   ^|   ^| ^|                 ^|   ^|        \_/        ^|   /  _   \   ^|   _   ^|  ^|    ^|^|  ^|
echo   ^|___^| ^|_________________^|   ^|    ^|\       /^|    ^|  ^|  /_\ __^|  ^|  ^| ^|  ^|  ^|    ^|^|  ^|
echo    ___   _________________    ^|    ^| \     / ^|    ^|  ^|     /__   ^|  ^| ^|  ^|  ^|    \/  ^|
echo   ^|   ^| ^|                 ^|   ^|    ^|  \   /  ^|    ^|   \______/   ^|__^| ^|__^|   \______/
echo   ^|   ^| ^|                 ^|   ^|    ^|   \_/   ^|    ^|
echo   ^|___^| ^|_________________^|   ^|____^|         ^|___/
echo.
echo ========================================================================================
echo.
echo [P]acote Office                               [E]ncerrar Sessao
echo.
echo [S]ervicos de Rede                            [F]inalizar Programa
echo.
echo [A]plicativos do Windows
echo.
echo ========================================================================================
echo.
set /p op=Insira a opcao desejada: 
echo.

if /i %op% == p (call office.bat)
if /i %op% == s (call rede.bat)
if /i %op% == a (call windows.bat)
if /i %op% == e (call login.bat)
if /i %op% == f (goto:finalizar) else (goto:opInvalida)

:finalizar
echo ========================================================================================
echo.
set /p sair=Deseja realmente sair? [S/N]: 

if /i %sair% == s (exit)
if /i %sair% == n (goto:inicio) else (goto:opInvalida)

:opInvalida
echo ========================================================================================
echo.
echo                                Escolha uma opcao valida!
echo.
echo ========================================================================================
echo.
pause
goto inicio