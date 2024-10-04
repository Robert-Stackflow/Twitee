import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'video_player_control_panel_method_channel.dart';

abstract class VideoPlayerControlPanelPlatform extends PlatformInterface {
  /// Constructs a VideoPlayerControlPanelPlatform.
  VideoPlayerControlPanelPlatform() : super(token: _token);

  static final Object _token = Object();

  static VideoPlayerControlPanelPlatform _instance = MethodChannelVideoPlayerControlPanel();

  /// The default instance of [VideoPlayerControlPanelPlatform] to use.
  ///
  /// Defaults to [MethodChannelVideoPlayerControlPanel].
  static VideoPlayerControlPanelPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [VideoPlayerControlPanelPlatform] when
  /// they register themselves.
  static set instance(VideoPlayerControlPanelPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
