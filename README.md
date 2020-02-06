# Docker IC3
## Build
`docker build . -t=jic3`
## Run for all apps in `$(pwd)/APKs`
`docker run -it -v $(pwd)/APKs:/APKs -v $(pwd)/dare_out:/dare_out jic3`
## Run for single app e.g., `$(pwd)/APKs/Aard.apk`
docker run  -v $(pwd)/APKs:/APKs -v $(pwd)/dare_out:/dare_out -e APKS="Aard.apk" jic3

## https://github.com/lilicoding/soot-infoflow-android-iccta/wiki/Detailed-description-of-IccTA-usage
