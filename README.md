# Docker IC3

## Run from the image `noidsirius/ic3:0.1.0`
### Run for all apps in `$(pwd)/APKs`
`docker run -v $(pwd)/APKs:/APKs -v $(pwd)/dare_out:/dare_out noidsirius/ic3:0.1.0`
### Run for a single app e.g., `$(pwd)/APKs/Aard.apk`
`docker run  -v $(pwd)/APKs:/APKs -v $(pwd)/dare_out:/dare_out -e APKS="Aard.apk" noidsirius/ic3:0.1.0`
### Interactive Environment
`docker run -it -v $(pwd)/APKs:/APKs -v $(pwd)/dare_out:/dare_out noidsirius/ic3:0.1.0 /bin/bash`

## Build and Run
`docker build . -t=jic3`
### Run for all apps in `$(pwd)/APKs`
`docker run -it -v $(pwd)/APKs:/APKs -v $(pwd)/dare_out:/dare_out jic3`

## Source
[Detailed Description of IccTA usage](https://github.com/lilicoding/soot-infoflow-android-iccta/wiki/Detailed-description-of-IccTA-usage)
