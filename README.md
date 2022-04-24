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