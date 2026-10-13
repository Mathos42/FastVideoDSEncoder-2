@echo off
chcp 65001 >nul
cd /d "%~dp0"

REM Création du dossier "Encodes" s'il n'existe pas déjà
if not exist "Encodes" mkdir "Encodes"

REM Menu de choix
echo ==========================================
echo Choisissez le type d'encodage :
echo 1 - Encodage simple (normal audio)
echo 2 - Encodage avec le son normalisé (normalised audio)
echo ==========================================
set /p choix="Votre choix (1 ou 2) : "

REM Test : Est-ce qu'un fichier a été glissé-déposé sur le .bat ?
if "%~1"=="" (
    REM Cas 1 : Aucun fichier glissé. On traite tout le dossier.
    echo.
    echo Aucun fichier glissé détecté. Traitement de toutes les vidéos du dossier...
    for %%f in (*.mp4 *.avi *.mpeg *.webm *.mkv *.mpg *.asx *.mov *.flv *.m4v) do (
        if "%choix%"=="2" (
            echo.
            echo Normalisation du son pour : "%%f"
            echo.
            bin\x64\ffmpeg -y -hide_banner -v warning -stats -fflags +genpts -i "%%f" -af loudnorm=I=-16:TP=-1.5:LRA=11 -c:v copy -c:a aac "%%~dpnf_normalise.mp4"
            echo.
            echo Encodage en cours pour : "%%f"
            bin\FastVideoDSEncoder.exe "%%~dpnf_normalise.mp4" "Encodes\%%~nf.fv"
            del "%%~dpnf_normalise.mp4"
        ) else (
            echo.
            echo Encodage normal en cours pour : "%%f"
            bin\FastVideoDSEncoder.exe "%%f" "Encodes\%%~nf.fv"
        )
    )
) else (
    REM Cas 2 : Fichier(s) glissé(s). On ne traite que ceux-là.
    echo.
    echo Fichier-s glissé-s détecté-s...
    for %%f in (%*) do (
        if "%choix%"=="2" (
            echo.
            echo Normalisation du son pour : %%f
            echo.
            bin\x64\ffmpeg -y -hide_banner -v warning -stats -fflags +genpts -i %%f -af loudnorm=I=-16:TP=-1.5:LRA=11 -c:v copy -c:a aac "%%~dpnf_normalise.mp4"
            echo.
            echo Encodage en cours pour : %%f
            bin\FastVideoDSEncoder.exe "%%~dpnf_normalise.mp4" "Encodes\%%~nf.fv"
            del "%%~dpnf_normalise.mp4"
        ) else (
            echo.
            echo Encodage normal en cours pour : %%f
            bin\FastVideoDSEncoder.exe %%f "Encodes\%%~nf.fv"
        )
    )
)

echo.
echo Tous les encodages sont terminés !
pause
