import 'package:flutter/foundation.dart';

class ALog {
  static void debug(String tag, String message) {
    if (kDebugMode) {
      print('[$tag] $message');
    }
  }

  static void error(String tag, String message) {
    if (kDebugMode) {
      print('[$tag] ERROR: $message');
    }
  }
}
