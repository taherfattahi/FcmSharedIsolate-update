import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fcm_shared_isolate/fcm_shared_isolate.dart';

void main() {
  const channel = MethodChannel('fcm_shared_isolate');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('create', () {
    FcmSharedIsolate();
  });
}
