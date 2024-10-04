import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'video_player_control_panel_platform_interface.dart';

/// An implementation of [VideoPlayerControlPanelPlatform] that uses method channels.
class MethodChannelVideoPlayerControlPanel extends VideoPlayerControlPanelPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('video_player_control_panel');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
