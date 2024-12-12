
import 'flutter_telephony_info_platform_interface.dart';

class FlutterTelephonyInfo {
  Future<String?> getPlatformVersion() {
    return FlutterTelephonyInfoPlatform.instance.getPlatformVersion();
  }

    Future<String?> getCurrentRadioAccessTechnology() {
    return FlutterTelephonyInfoPlatform.instance.getCurrentRadioAccessTechnology();
  }

}
