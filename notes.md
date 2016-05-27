## Transcription of Video Content

## Options

* Programmatically/Scripted
* Paid Transcription Services


## Video Players that support SRT or WebVTT

* SpeakerText CaptionBox
* OzPlayer
* JWPlayer
* 3playmedia's Video.js


## WebVTT

[Source](http://html5doctor.com/video-subtitling-and-webvtt/)

A .vtt file is a plain text file which contains the following information:

* Subtitles
* Captions
* Descriptions
* Chapters
* Metadata


### Video HTML Tag

```html
<video width="640" height="480" controls>
  <source src="video.mp4" type="video/mp4" />
  <source src="video.webm" type="video/webm" />
  <track src="subtitles.vtt" kind="subtitles" srclang="en" label="English" />
  <!-- fallback for old browsers -->
</video>
```


### WebVTT File Contents

```no-highlight
WEBVTT

1
00:00:01.000 --> 00:00:10.000
This is the first line of text, displaying from 1-10 seconds

2
00:00:15.000 --> 00:00:20.000
And the second line of text
separated over two lines
```

### JavaScript Polyfills for WebVTT

* js_videosub
* Playr
* MediaElementJS
* LeanBack player
* Captionator


## Voice Activity Detection

* py-webrtcvad
* pyAudioAnalysis
* openSMILE


## Speech-To-Text

* [Watson!](http://www.ibm.com/smarterplanet/us/en/ibmwatson/developercloud/speech-to-text/api/v1/#authentication)

## Resources

* [Convert recored audio to text](http://www.leveluplunch.com/blog/2013/12/30/convert-recorded-audio-text-using-osx-dictation-audacity-soundflower/)


## Remove Audio from Video

```no-highlight
$ ffmpeg -i filename.mov -acodec copy audio.aac
```
