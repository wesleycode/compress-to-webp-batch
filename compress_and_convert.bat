@echo off
setlocal enabledelayedexpansion

REM Diretório contendo as imagens
set "DIR=C:\Users\tiabd\Desktop\imagens"

REM Percorrer todas as imagens no diretório
for %%F in (%DIR%\*.jpg %DIR%\*.jpeg %DIR%\*.png) do (


    REM Converter a imagem para WebP usando o cwebp
    cwebp -q 90 "%%F" -o "%%~dpnF.webp"

    echo Imagem %%F comprimida e convertida para WebP
)

echo Processo concluído.
pause