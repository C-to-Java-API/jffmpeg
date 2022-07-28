# Java bindings for FFMPEG stack

## What

[jextract](https://github.com/openjdk/jextract)-generated bindings for:
- libavcodec
- libavdevice
- libavfilter
- libavformat
- libavutil
- libpostproc
- libswresample
- libswscale

## How

build:
```shell
make jar name=avcodec
make jar name=avdevice
make jar name=avfilter
make jar name=avformat
make jar name=avutil
make jar name=postproc
make jar name=swresample
make jar name=swscale
```

deploy:
```shell
make deploy name=avcodec
make deploy name=avdevice
make deploy name=avfilter
make deploy name=avformat
make deploy name=avutil
make deploy name=postproc
make deploy name=swresample
make deploy name=swscale
```
