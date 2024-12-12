import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_telephony_info_platform_interface.dart';

/// An implementation of [FlutterTelephonyInfoPlatform] that uses method channels.
class MethodChannelFlutterTelephonyInfo extends FlutterTelephonyInfoPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_telephony_info');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
  @override
  Future<String?> getCurrentRadioAccessTechnology() async {
    final version = await methodChannel.invokeMethod<String>('getCurrentRadioAccessTechnology');
    return version;
  }

}
