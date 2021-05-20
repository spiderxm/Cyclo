import 'package:device_info/device_info.dart';
import 'package:flutter/services.dart';
import 'dart:io';

class DeviceDetails {
  /// Retrieves [deviceName], [deviceVersion], [identifier], [type] of the device and returns a map for the same.
  static Future<Map<String, String>> getDeviceDetails() async {
    String deviceName;
    String deviceVersion;
    String identifier;
    String type;
    final DeviceInfoPlugin deviceInfoPlugin = new DeviceInfoPlugin();
    try {
      if (Platform.isAndroid) {
        var build = await deviceInfoPlugin.androidInfo;
        deviceName = build.model;
        deviceVersion = build.version.sdkInt.toString();
        identifier = build.androidId; //unique id for Android
        type = "android";
      } else if (Platform.isIOS) {
        var data = await deviceInfoPlugin.iosInfo;
        deviceName = data.name;
        deviceVersion = data.systemVersion;
        identifier = data.identifierForVendor; // unique id for iOS
        type = "iOS";
      }
    } on PlatformException {
      print('Failed to get platform version');
    }
    return {
      "deviceName": deviceName,
      "deviceVersion": deviceVersion,
      "identifier": identifier,
      "type": type
    };
  }
}
