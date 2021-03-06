
import 'dart:async';

import 'package:flutter/services.dart';

class Photon {
  static const MethodChannel _channel = MethodChannel('photon');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
