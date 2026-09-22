> **Licence**: ce dépôt est un fork de Gericom/FastVideoDSEncoder, publié sans licence explicite (code d'origine : tous droits réservés). La licence GPLv3 de ce dépôt ne couvre que mes propres modifications et ajouts (mise à jour vers FFmpeg.AutoGen 9 / FFmpeg 9, correction de l'encodage des vidéos avec un ratio d'aspect atypique, corrections diverses), pas le code original de Gericom. La GPLv3 est également requise par les DLL FFmpeg redistribuées (build "full", compilé avec --enable-gpl --enable-libx264 --enable-libx265).

FastVideoDS Encoder 2
===================
Encodeur pour le format FastVideoDS. Utilisez [FastVideoDS Player-2](https://github.com/Mathos42/FastVideoDSPlayer-2) pour lire les vidéos encodées.  

- Encodeur mis à jour pour corriger des problèmes d'incompatibilité avec certains fichiers vidéos  
- Mis à Jour avec FFMpeg 9.0.1, prends désormais en compte les nouveaux codecs vidéos
- Lorsque la vidéo fait 208 lignes, alors que l'écran de la DS n'en fait que 192, la lecture de la vidéo plantait. Désormais l'encodeur réduit la largeur affichée (pillarboxing avec bandes noires sur les côtés) pour que la hauteur ne dépasse jamais l'écran, exactement comme du letterboxing mais sur l'axe horizontal.
- Possibilité de normaliser le son lors de l'encodage (avec les fichiers .bat)
  
  [FastVideoDS Encoder](https://www.hiraven.com/FastVideoDS/FastVideoDSEncoder.zip) prêt à l'emploi, fichiers .bat inclus  

Fichiers .bat pour :  
Encodage d'une ou plusieurs vidéos : https://www.hiraven.com/FastVideoDS/FastVideoDS.bat  
Encodage d'un dossier entier de vidéos : https://www.hiraven.com/FastVideoDS/Encodage_repertoire.bat  
Encodage d'une ou plusieurs vidéos avec le son normalisé : https://www.hiraven.com/FastVideoDS/FastVideoDS_Normalise.bat  
Encodage d'un dossier entier de vidéos avec le son normalisé : https://www.hiraven.com/FastVideoDS/Encodage_Repertoire_Normalise.bat  

## Utilisation manuelle  
    FastVideoDSEncoder.exe %%f "%%~nf.fv"

* **-j *jobs*** Nombre de tâches simultanées (facultatif, par défaut : nombre de threads du processeur / 1,5)  
* ***%%f*** Le fichier vidéo d'entrée. La plupart des formats sont pris en charge par FFmpeg.  
* ***"%%~nf.fv"*** Le fichier vidéo de sortie.  

## Bibliothèques utilisées
* [CommandLineParser](https://github.com/commandlineparser/commandline)
* [FFmpeg.AutoGen](https://github.com/Ruslan-B/FFmpeg.AutoGen)
* [FFmpeg](https://ffmpeg.org/)

----------------------------------------------------------------------------------------------------------------------------------------------------
> **Licence**: this repository is a fork of Gericom/FastVideoDSEncoder, published without an explicit license (original code: all rights reserved). The GPLv3 license of this repository only covers my own modifications and additions (update to FFmpeg.AutoGen 9 / FFmpeg 9, fix for encoding videos with an unusual aspect ratio, various fixes), not Gericom's original code. GPLv3 is also required by the bundled FFmpeg DLLs (built with the "full" variant, --enable-gpl --enable-libx264 --enable-libx265).

FastVideoDS Encoder 2
===================
Encoder for the FastVideoDS format. Use [FastVideoDS Player-2](https://github.com/Mathos42/FastVideoDSPlayer-2) to play back the encoded videos.  

- Encoder updated to fix compatibility issues with certain video files  
- Updated to FFmpeg 9.0.1; now supports new video codecs
- When the video was 208 lines wide, whilst the DS screen is only 192 lines wide, video playback would crash. Now, the encoder reduces the displayed width (pillarboxing with black bars on either side) so that the height never exceeds the screen, exactly like letterboxing but along the horizontal axis.
- Option to normalise the audio during encoding (with .bat files)

  [FastVideoDS Encoder](https://www.hiraven.com/FastVideoDS/FastVideoDSEncoder.zip) ready to use, including .bat files  

.bat files for :  
Encoding one or multiple videos : https://www.hiraven.com/FastVideoDS/FastVideoDS.bat  
Encoding an entire folder of videos : https://www.hiraven.com/FastVideoDS/Encodage_repertoire.bat  
Encoding one or more videos with standardised audio: https://www.hiraven.com/FastVideoDS/FastVideoDS_Normalise.bat  
Encoding an entire folder of videos with standardised audio: https://www.hiraven.com/FastVideoDS/Encodage_Repertoire_Normalise.bat  

## Manual operation
    FastVideoDSEncoder.exe %%f "%%~nf.fv"

* **-j *jobs*** Number of concurrent jobs (optional, default: cpu threads / 1.5)
* ***%%f*** The input video file. Most formats are supported through FFmpeg.
* ***"%%~nf.fv"*** The output video file.

## Libraries Used
* [CommandLineParser](https://github.com/commandlineparser/commandline)
* [FFmpeg.AutoGen](https://github.com/Ruslan-B/FFmpeg.AutoGen)
* [FFmpeg](https://ffmpeg.org/)
