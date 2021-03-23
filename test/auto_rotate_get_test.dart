import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:auto_rotate_get/auto_rotate_get.dart';

void main() {
  const MethodChannel channel = MethodChannel('auto_rotate_get');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getAutoRoute', () async {
    expect(await AutoRotateGet.autoRoute, '42');
  });
}
