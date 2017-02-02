#/bin/bash

mkdir -p .build/native

# Build
docker run --rm --volume "$(pwd):/app" --workdir /app smithmicro/swift:3.0.2 swift build -c debug --build-path .build/native
# Run
docker run -it --rm --volume "$(pwd):/app" --workdir /app smithmicro/swift:3.0.2 .build/native/debug/DateFormatter
