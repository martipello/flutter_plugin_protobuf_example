# my_plugin

A new flutter plugin project.

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


This plugin uses Protocol Buffers to encode and decode messages sent between the Flutter application
and respective native applications in Swift and Kotlin.

All proto declarations are located in the 'protos' folder at the root of the project, and the generate code is in 'lib/src/generated'.

To generate Dart code from the proto declaration, make sure to install protoc and the protoc Dart plugin.

Use the following command to generate the Dart code:

protoc --plugin=protoc-gen-dart=$HOME/.pub-cache/bin/protoc-gen-dart --dart_out=lib/generated -Iprotos protos/*.proto

## Protocol Buffers on iOS

The Swift implementation of Protocol Buffers and how to install it is available at:

https://github.com/apple/swift-protobuf

The SwiftProtobuf pod dependency should be added to the main application Podfile (not inside the plugin).
