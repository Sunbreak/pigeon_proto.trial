import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pigeon_proto/pigeon_proto.dart';

void main() {
  const MethodChannel channel = MethodChannel('pigeon_proto');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await PigeonProto.platformVersion, '42');
  });
}
