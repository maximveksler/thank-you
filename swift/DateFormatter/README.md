# Crash of DateFormatter on Linux but no on Mac

## Steps to reproduce

### Build
#### Build for Mac
```
swift --version
Apple Swift version 3.0.2 (swiftlang-800.0.63 clang-800.0.42.1)
Target: x86_64-apple-macosx10.9
```

```
swift build
Compile Swift Module 'DateFormatter' (1 sources)
Linking ./.build/debug/DateFormatter
```

#### Build for linux

```
mkdir -p .build/linux
docker run --rm --volume "$(pwd):/app" --workdir /app smithmicro/swift:3.0.2 swift build -c debug --build-path .build/linux
```

### Execute
#### Mac
```
.build/debug/DateFormatter
2017-02-02T00:14:50.763Z
```

#### linux
```
docker run -it --rm --volume "$(pwd):/app" --workdir /app smithmicro/swift:3.0.2 /bin/bash
.build/linux/debug/DateFormatter
Segmentation fault
```
