
import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:pigeon_proto/proto/person.pb.dart';

export 'proto/person.pb.dart';

class PigeonProto {
  static const MethodChannel _channel = MethodChannel('pigeon_proto');

  static Future<Person> get person async {
    final Uint8List data = await _channel.invokeMethod('getPerson');
    return Person.fromBuffer(data);
  }
}
