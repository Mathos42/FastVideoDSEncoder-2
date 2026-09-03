FastVideoDS Encoder
===================
Encodeur pour le format FastVideoDS. Utilisez [FastVideoDS Player-2](https://github.com/Mathos42/FastVideoDSPlayer-2) pour lire les vidéos encodées.  

- Encodeur mis à jour pour corriger des problèmes d'incompatibilité avec certains fichiers vidéos  
- Mis à Jour avec FFMpeg 9.0.1, prends désormais en compte les nouveaux codecs vidéos (tant que vous restez en .avi et .mp4 et qu'ils sont encodés selon les normes)  

  [FastVideoDS Encoder](https://www.hiraven.com/FastVideoDS/FastVideoDSEncoder.zip) directement utilisable, fichiers .bat inclus  

Fichiers .bat pour :  
Encodage d'une ou plusieurs vidéos : https://www.hiraven.com/FastVideoDS/FastVideoDS.bat  
Encodage d'un dossier entier de vidéos : https://www.hiraven.com/FastVideoDS/Encodage_repertoire.bat  

## Utilisation manuelle  
    FastVideoDSEncoder [-j jobs] input output.fv

* **-j *jobs*** Nombre de tâches simultanées (facultatif, par défaut : nombre de threads du processeur / 1,5)  
* ***input*** Le fichier vidéo d'entrée. La plupart des formats sont pris en charge par FFmpeg.  
* ***output.fv*** Le fichier vidéo de sortie.  

## Bibliothèques utilisées
* [CommandLineParser](https://github.com/commandlineparser/commandline)
* [FFmpeg.AutoGen](https://github.com/Ruslan-B/FFmpeg.AutoGen)
* [FFmpeg](https://ffmpeg.org/)

----------------------------------------------------------------------------------------------------------------------------------------------------

FastVideoDS Encoder
===================
Encoder for the FastVideoDS format. Use [FastVideoDS Player-2](https://github.com/Mathos42/FastVideoDSPlayer-2) to play back the encoded videos.  

- Encoder updated to fix compatibility issues with certain video files  
- Updated to FFmpeg 9.0.1; now supports new video codecs (provided you stick to .avi and .mp4 formats and they are encoded according to the relevant standards)  

  [FastVideoDS Encoder](https://www.hiraven.com/FastVideoDS/FastVideoDSEncoder.zip) ready to use, including .bat files  

.bat files for :  
Encoding one or multiple videos : https://www.hiraven.com/FastVideoDS/FastVideoDS.bat  
Encoding an entire folder of videos : https://www.hiraven.com/FastVideoDS/Encodage_repertoire.bat  

## Manual operation
    FastVideoDSEncoder [-j jobs] input output.fv

* **-j *jobs*** Number of concurrent jobs (optional, default: cpu threads / 1.5)
* ***input*** The input video file. Most formats are supported through FFmpeg.
* ***output.fv*** The output video file.

## Libraries Used
* [CommandLineParser](https://github.com/commandlineparser/commandline)
* [FFmpeg.AutoGen](https://github.com/Ruslan-B/FFmpeg.AutoGen)
* [FFmpeg](https://ffmpeg.org/)
