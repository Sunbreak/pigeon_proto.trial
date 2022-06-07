# pigeon_proto

A new flutter plugin project.

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## How to Build

- Prepare

```sh
# Protobuf compiler
% brew intall protobuf
# Protobuf compiler plugin for Dart
% flutter pub global activate protoc_plugin
```

- Generate Dart protobuf files

> **Note**: Ensure an executable `dart` is available in `PATH`

```sh
% cd proto
% protoc --dart_out=../lib/proto *.proto --plugin=$HOME/.pub-cache/bin/protoc-gen-dart
```

- Generate Java lite protobuf files

1. Auto generation

> **Note**: `generate*Proto` tasks would run automatically during project build.
> Generated Java lite files locate in `build` instead of `src` directory

```sh
% cd example/android
% ./gradlew generateDebugProto
```

2. Manual generation

```sh
% cd proto
% protoc --java_out=lite:"../android/src/main/java" *.proto
```

> **Note**: According to [main/java/lite.md](https://github.com/protocolbuffers/protobuf/blob/main/java/lite.md) and [javalite/java/lite.md](https://github.com/protocolbuffers/protobuf/blob/javalite/java/lite.md), `protoc` 3.0.0-3.7.1 support old version of Java Lite Runtime
>
> ```sh
> % protoc3.7.1 --plugin=protoc-gen-javalite=PATH_TO_JAVALITE --javalite_out="../android/src/main/java" *.proto
> ```
> 
> protoc3.7.1: https://github.com/protocolbuffers/protobuf/releases/tag/v3.7.1
> 
> protoc-gen-javalite: https://mvnrepository.com/artifact/com.google.protobuf/protoc-gen-javalite/3.0.0

- Generate Objective-C protobuf files

```sh
% cd proto
% protoc --objc_out=../ios/Classes *.proto
```