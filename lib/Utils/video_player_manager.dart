/*
 * Copyright (c) 2024 Robert-Stackflow.
 *
 * This program is free software: you can redistribute it and/or modify it under the terms of the
 * GNU General Public License as published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without
 * even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with this program.
 * If not, see <https://www.gnu.org/licenses/>.
 */

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlaybackManager extends ChangeNotifier {
  static final VideoPlaybackManager _instance =
      VideoPlaybackManager._internal();

  factory VideoPlaybackManager() {
    return _instance;
  }

  VideoPlaybackManager._internal();

  // 存储当前正在播放的视频控制器
  VideoPlayerController? _currentController;

  // 设置当前播放的视频控制器
  void play(VideoPlayerController controller) {
    if (_currentController == controller) return;

    // 如果有其他视频在播放，暂停它
    if (_currentController != null && _currentController!.value.isPlaying) {
      _currentController!.pause();
    }

    _currentController = controller;
    controller.play();
    notifyListeners();
  }

  // 暂停当前播放的视频
  void pause(VideoPlayerController controller) {
    if (_currentController == controller && controller.value.isPlaying) {
      controller.pause();
      _currentController = null;
      notifyListeners();
    }
  }

  // 当视频销毁时，检查是否需要更新当前控制器
  void disposeController(VideoPlayerController controller) {
    if (_currentController == controller) {
      _currentController = null;
      notifyListeners();
    }
  }
}
