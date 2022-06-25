@echo off
title SERVICOS DE REDE
mode 64,29
color 0f
:inicio
cls
echo ================================================================
echo       ______________
echo       \       ____  \                       __
echo        ^|     ^|    \  \                     ^|  ^|
echo        ^|     ^|     ^|  ^|    ______      ____^|  ^|    ______
echo        ^|     ^|____/  /    /  _   \    /   _   ^|   /  _   \
echo        ^|      _    _/    ^|  /_\ __^|  ^|   / \  ^|  ^|  /_\ __^|
echo        ^|     ^| \   \     ^|     /__   ^|   \_/  ^|  ^|     /__
echo        ^|     ^|  \   \     \______/    \______/    \______/
echo        ^|     ^|   \   \
echo        ^|_____^|    \___\
echo.
echo ================================================================
echo.
echo [N]avegar na Internet          [O]bter o IP da Maquina
echo.
echo [T]estar Conexao da Rede       [R]etornar ao Menu
echo.
echo ================================================================
echo.
set /p op=Insira a opcao desejada: 
echo.

if /i %op% == n (goto:navegar)
if /i %op% == t (goto:testar)
if /i %op% == o (goto:obterIp)
if /i %op% == r (call menu.bat) else (goto:opInvalida)

:navegar
echo Insira o endereco do site a ser navegado: 
set /p site=
start %site%
goto inicio

:testar
echo Insira o endereco do site ou IP da maquina:
set /p testar=
echo.
echo (Pressione CTRL + C para suspender os disparos)
ping %testar% -t
goto inicio

:obterIp
ipconfig | find /i "IPv4"
echo.
pause
goto inicio

:opInvalida
echo ================================================================
echo.
echo                    Escolha uma opcao valida!
echo.
echo ================================================================
echo.
pause
goto inicio