
import 'dart:typed_data';

import 'package:flutter/services.dart';

extension MethodCallArgumentsExtension on MethodCall {
  Uint8List bytes() {
    return arguments as Uint8List;
  }
}


