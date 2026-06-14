@echo off
setlocal enabledelayedexpansion

for /f "delims=" %%a in (birrifici.txt) do (

    set "name=%%a"

    rem versione per cartella/file
    set "folder=!name: =_!"
    set "folder=!folder:.=_!"
    set "folder=!folder:'=_!"
    set "folder=!folder:,=_!"

    mkdir "!folder!"

    (
    echo ^<!DOCTYPE html^>
    echo ^<html lang="it"^>
    echo.
    echo ^<head^>
    echo   ^<meta charset="UTF-8"^>
    echo   ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
    echo.
    echo   ^<title^>!name!^</title^>
    echo.
    echo   ^<link rel="stylesheet" href="../../style.css"^>
    echo ^</head^>
    echo.
    echo ^<body^>
    echo.
    echo ^<h1^>!name!^</h1^>
    echo.
    echo ^<p^>Collezione etichette birra.^</p^>
    echo.
    echo ^</body^>
    echo.
    echo ^</html^>

    ) > "!folder!\index.html"

)
