FastVideoDS Encoder
===================
Encoder for the FastVideoDS format. Use [FastVideoDS Player-2](https://github.com/Mathos42/FastVideoDSPlayer-2) to play back the encoded videos.

.bat files for :  
Encoding one or multiple videos : https://www.hiraven.com/FastVideoDS/FastVideoDS.bat  
Encoding an entire folder of videos : https://www.hiraven.com/FastVideoDS/Encodage_repertoire.bat  

## Usage
    FastVideoDSEncoder [-j jobs] input output.fv

* **-j *jobs*** Number of concurrent jobs (optional, default: cpu threads / 1.5)
* ***input*** The input video file. Most formats are supported through FFmpeg.
* ***output.fv*** The output video file.

## Libraries Used
* [CommandLineParser](https://github.com/commandlineparser/commandline)
* [FFmpeg.AutoGen](https://github.com/Ruslan-B/FFmpeg.AutoGen)
* [FFmpeg](https://ffmpeg.org/)
