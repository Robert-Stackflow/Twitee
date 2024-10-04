# video_player_control_panel

![pub version][visits-count-image]

[visits-count-image]: https://img.shields.io/badge/dynamic/json?label=Visits%20Count&query=value&url=https://api.countapi.xyz/hit/jakky1_video_player_control_panel/visits

A control panel laid on top of VideoPlayer. User can do play / pause / seekTo / set volume on it. Support closed captions / subtitle. Support fullscreen.

## Platform Support

| Windows | Android | iOS | Web |
| :-----: | :-----: | :-----: | :-----: |
|    ✔️  (Vista+)   |    ✔️   |    ✔️   |    ✔️   |

Playback in Windows is supported by plug-in [video_player_win][2].
Playback in Android / iOS / Web is supported by flutter official package [video_player][1].

## Supported Formats in Windows (Important !)

For Windows, please refer to [video_player_win][2]. (Important)

For Android / iOS / Web, please refer to [video_player][1].

## Quick Start

### Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  video_player_control_panel: ^1.1.0
```

Or

```yaml
dependencies:
  video_player_control_panel:
    git:
      url: https://github.com/jakky1/video_player_control_panel.git
      ref: master
```

# Usage

## register player first

Before starting play media, you should add the following code:
```dart
import 'package:video_player_win/video_player_win_plugin.dart';

if (!kIsWeb && Platform.isWindows) WindowsVideoPlayer.registerWith();
```

## video / audio playback

Play from network source:
```dart
var controller = VideoPlayerController.network("https://www.your-web.com/sample.mp4");
controller.initialize().then((value) {
  if (controller.value.isInitialized) {
    controller.play();
  } else {
    log("video file load failed");
  }
}).catchError((e) {
  log("controller.initialize() error occurs: $e");
});
```

Play from file:
```dart
var controller = VideoPlayerController.file(File("E:\\test.mp4"));
```

Load subtitle:
```dart
String content = _getYourSubtitleContent();
var file = SubRipCaptionFile(content); // if is a subrip (.srt) file
var file = WebVTTCaptionFile(content); // if is a WebVTT (.vtt) file
controller.setClosedCaptionFile( Future.value(file) );
```

If the file is a video, build a display widget to show video frames with a control panel:
```dart
Widget build(BuildContext context) {
  return JkVideoControlPanel(controller,
    showClosedCaptionButton: true,
    showFullscreenButton: true,
    showVolumeButton: true,

	// onPrevClicked: optional. If provided, a [previous] button will shown
    onPrevClicked: (nowPlayIndex <= 0) ? null : () {
      playPrevVideo();
    },

	// onNextClicked: optional. If provided, a [next] button will shown
    onNextClicked: (nowPlayIndex >= g_playlist.length - 1) ? null : () {
      playNextVideo();
    },

	// onPlayEnded: optional, called when the current media is play to end.
    onPlayEnded: () {
      playNextVideo();
    },
  );
}
```

# operations ( if needed )

- Play: ``` controller.play(); ```
- Pause: ``` controller.pause(); ```
- Seek: ``` controller.seekTo( Duration(minute: 10, second:30) ); ```
- set playback speed: (normal speed: 1.0)
``` controller.setPlaybackSpeed(1.5); ```
- set volume: (max: 1.0 , mute: 0.0)
``` controller.setVolume(0.5); ```
- set looping:  ``` controller.setLooping(true); ```
- free resource: ``` controller.dispose(); ```

# Listen playback events and values ( if needed)
```dart
void onPlaybackEvent() {
	final value = controller.value;
	// value.isInitialized (bool)
	// value.size (Size, video size)
	// value.duration (Duration)
	// value.isPlaying (bool)
	// value.isBuffering (bool)
	// value.position (Duration)
}
controller.addListener(onPlaybackEvent);
...
controller.removeListener(onPlaybackEvent); // remember to removeListener()
```
## Release resource
```dart
controller.dispose();
```

## Play a playlist in a simple way
No need to use controller !
```dart
final m_playlist = [
  "https://www.test.com/test1.mp4",
  "https://www.test.com/test2.mp4",
  "E:/test_youtube.mp4",
];

@override
Widget build(BuildContext context) {
  return JkVideoPlaylistPlayer(
    playlist: m_playlist,
    isLooping: true,
    autoplay: true,
  );
}
```


## Example

```dart
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player_control_panel/video_player_control_panel.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_win/video_player_win_plugin.dart';
import 'package:sprintf/sprintf.dart';


void main() {
  if (!kIsWeb && Platform.isWindows) WindowsVideoPlayer.registerWith();
  runApp(const MyApp());
}

String generateCaptionFileContent() {
  final sb = StringBuffer();
  for (int i=1; i<60*20; i++) {
    int minute = i ~/ 60;
    int second = i % 60;
    sb.writeln("$i");
    sb.writeln(sprintf("00:%02d:%02d,000 --> 00:%02d:%02d,900", [minute, second, minute, second]));
    sb.writeln("this is caption $i");
    sb.writeln("2nd line");
    sb.writeln("");
  }
  return sb.toString();
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();

    //controller = VideoPlayerController.file(File("E:\\test_youtube.mp4"));
    controller = VideoPlayerController.network("https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_30mb.mp4");

    var captionFile = Future.value(SubRipCaptionFile(generateCaptionFileContent()));
    controller.setClosedCaptionFile(captionFile);

    controller.initialize().then((value) {
      if (!kIsWeb) controller.play();
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),

        body: JkVideoControlPanel(controller,
          showClosedCaptionButton: true,
          showFullscreenButton: true,
          showVolumeButton: true,
          bgColor: Colors.black,
        ),
      ),
    );
  }
}
```
[1]: https://pub.dev/packages/video_player "video_player"
[2]: https://pub.dev/packages/video_player_win "video_player_win"