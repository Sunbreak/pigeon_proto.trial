
import 'dart:async';

import 'package:flutter/services.dart';

class PigeonProto {
  static const MethodChannel _channel = MethodChannel('pigeon_proto');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
