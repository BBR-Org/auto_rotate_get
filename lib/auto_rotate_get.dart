
import 'dart:async';

import 'package:flutter/services.dart';

class AutoRotateGet {
  static const MethodChannel _channel =
      const MethodChannel('auto_rotate_get');

  static Future<bool> get autoRoute async {
    final bool autoRoute = await _channel.invokeMethod('getAutoRotate');
    return autoRoute;
  }
}
