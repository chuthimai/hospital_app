import 'package:flutter/services.dart';

class AssetAction {
  static Future<String> loadAsset(String path) async {
    return await rootBundle.loadString(path);
  }
}