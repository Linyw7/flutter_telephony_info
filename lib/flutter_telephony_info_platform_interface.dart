import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_telephony_info_method_channel.dart';

abstract class FlutterTelephonyInfoPlatform extends PlatformInterface {
  /// Constructs a FlutterTelephonyInfoPlatform.
  FlutterTelephonyInfoPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterTelephonyInfoPlatform _instance = MethodChannelFlutterTelephonyInfo();

  /// The default instance of [FlutterTelephonyInfoPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterTelephonyInfo].
  static FlutterTelephonyInfoPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterTelephonyInfoPlatform] when
  /// they register themselves.
  static set instance(FlutterTelephonyInfoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
  Future<String?> getCurrentRadioAccessTechnology() {
    throw UnimplementedError('getCurrentRadioAccessTechnology() has not been implemented.');
  }
  
}
