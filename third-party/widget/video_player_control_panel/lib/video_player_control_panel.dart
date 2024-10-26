import 'dart:async';
import 'dart:io';
import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fullscreen_window/fullscreen_window.dart';
import 'package:sprintf/sprintf.dart';
import 'package:video_player/video_player.dart';

import 'custom_slider_shape.dart';
import 'mouse_state_builder.dart';

export 'video_playlist_player.dart';

// ignore: must_be_immutable
class VideoControlPanel extends StatefulWidget {
  final VideoPlayerController controller;
  final bool showFullscreenButton; // Web不显示
  final bool showClosedCaptionButton;
  final bool showPlayPauseButton;
  final bool showSeekBar;
  final bool showDetailPanel;
  final bool isGif;
  final bool showAltButton;
  final bool showDurationAndPositionText;
  final bool showVolumeButton; // 仅在桌面端显示
  final VoidCallback? onPrevClicked;
  final VoidCallback? onNextClicked;
  final VoidCallback? onPlayClicked;
  final VoidCallback? onPlayEnded; // 循环时不调用
  final VoidCallback? onAltClicked;
  final VoidCallback? onFullscreenClicked;
  final Color? bgColor;
  late bool _isFullscreen;
  ValueNotifier<bool>? _showClosedCaptions;
  final Widget? placeholder;

  // 退出全屏后的方向配置
  // 默认值将恢复为系统默认方向
  final List<DeviceOrientation> restoreOrientations;

  VideoControlPanel(
    this.controller, {
    super.key,
    this.showFullscreenButton = false,
    this.showClosedCaptionButton = true,
    this.showSeekBar = true,
    this.showAltButton = false,
    this.showVolumeButton = true,
    this.showDetailPanel = true,
    this.showDurationAndPositionText = true,
    this.showPlayPauseButton = true,
    this.bgColor = Colors.black,
    this.isGif = false,
    this.onPrevClicked,
    this.onNextClicked,
    this.onPlayClicked,
    this.onAltClicked,
    this.onPlayEnded,
    this.onFullscreenClicked,
    this.restoreOrientations = const [],
    this.placeholder,
  }) : _isFullscreen = false;

  static VideoControlPanel _fullscreen(
    VideoPlayerController controller, {
    Key? key,
    required ValueNotifier<bool>? showClosedCaptions,
    required bool showVolumeButton,
    VoidCallback? onPrevClicked,
    VoidCallback? onNextClicked,
  }) {
    var panel = VideoControlPanel(
      controller,
      key: key,
      showVolumeButton: showVolumeButton,
      onPrevClicked: onPrevClicked,
      onNextClicked: onNextClicked,
    );
    panel._isFullscreen = true;
    panel._showClosedCaptions = showClosedCaptions;
    return panel;
  }

  @override
  State<VideoControlPanel> createState() => _VideoControlPanelState();
}

class _VideoControlPanelState extends State<VideoControlPanel>
    with TickerProviderStateMixin {
  final bool isDesktop = kIsWeb || Platform.isWindows;
  final bool isMobile = Platform.isAndroid || Platform.isIOS;
  final focusNode = FocusNode();

  late final AnimationController panelAnimController = AnimationController(
      duration: const Duration(milliseconds: 300), vsync: this);
  late final panelAnimation =
      panelAnimController.drive(Tween<double>(begin: 0.0, end: 1.0));
  late final AnimationController volumeAnimController = AnimationController(
      duration: const Duration(milliseconds: 100), vsync: this);
  late final volumeAnimation =
      volumeAnimController.drive(Tween<double>(begin: 0.0, end: 1.0));

  // 为用户显示的位置，当用户拖动进度条时，该值会因用户拖动而改变，不会因播放器的位置而改变
  final displayPosition = ValueNotifier<int>(0);

  final aspectRatio = ValueNotifier<double>(1);
  final duration = ValueNotifier<Duration>(Duration.zero);
  final playing = ValueNotifier<bool>(false);
  final buffering = ValueNotifier<bool>(false);
  final volumeValue = ValueNotifier<double>(1.0);

  // 用于通知全屏小部件controller已更改
  final controllerValue = ValueNotifier<int>(0);

  final hasClosedCaptionFile = ValueNotifier<bool>(false);
  late final ValueNotifier<bool> showClosedCaptions;
  final currentCaption = ValueNotifier<String>("");

  bool isMouseMode = false;

  // 面板是否可见，用于显示/隐藏鼠标光标，以及启用/禁用单击面板上的按钮
  final panelVisibility = ValueNotifier<bool>(false);

  bool isDraggingVolumeBar = false;
  bool isMouseInVolumeBar = false;
  bool isMouseInVolumeSlider = false;

  bool isPlayEnded = false;
  bool isFullscreenVisible = false;

  double volumeBeforeMute = 1.0;

  Timer? _hidePanelTimer;

  double iconSize = 10;
  double textSize = 5;

  bool get isPanelShown => panelAnimController.value > 0;

  SliderThemeData normalSeekBarTheme = const SliderThemeData(
    thumbColor: Colors.white,
    activeTrackColor: Colors.white,
    inactiveTrackColor: Colors.white30,
    trackHeight: 2,
    trackShape: CustomTrackShape(0),
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0),
    overlayShape: RoundSliderOverlayShape(overlayRadius: 16),
  );

  SliderThemeData hoverSeekBarTheme = const SliderThemeData(
    thumbColor: Colors.white,
    activeTrackColor: Colors.white,
    inactiveTrackColor: Colors.white30,
    trackHeight: 3,
    trackShape: CustomTrackShape(1),
    thumbShape: RoundSliderThumbShape(
        enabledThumbRadius: 8, elevation: 0, pressedElevation: 0),
    overlayShape: RoundSliderOverlayShape(overlayRadius: 16),
    overlayColor: Colors.white30,
  );

  void onAspectRatioChanged() {
    if (!isDesktop && widget._isFullscreen) {
      if (aspectRatio.value > 1.05) {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeRight,
          DeviceOrientation.landscapeLeft,
        ]);
      } else if (aspectRatio.value < 0.95) {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
      }
    }
  }

  void onPlayerValueChanged() {
    final playerValue = widget.controller.value;
    bool isInitializing = !playerValue.isInitialized && !playerValue.hasError;

    if (!playing.value && playerValue.isPlaying && panelVisibility.value) {
      showPanel();
    }

    duration.value = playerValue.duration;
    playing.value = playerValue.isPlaying;
    volumeValue.value = playerValue.volume;
    buffering.value = playerValue.isBuffering || isInitializing;

    // don't update progress by player's position when seeking
    if (!_delaySeeking) {
      displayPosition.value = playerValue.position.inMilliseconds;
    }

    hasClosedCaptionFile.value = widget.controller.closedCaptionFile != null;
    currentCaption.value = playerValue.caption.text;

    if (!isInitializing && aspectRatio.value != playerValue.aspectRatio) {
      aspectRatio.value = playerValue.aspectRatio;
      onAspectRatioChanged();
    }

    if (playerValue.isInitialized &&
        playerValue.duration.inMilliseconds > 0 &&
        playerValue.position.compareTo(playerValue.duration) >= 0) {
      if (!isPlayEnded) {
        isPlayEnded = true;
        playing.value = false;
        widget.controller.seekTo(const Duration(milliseconds: 0));
        if (widget.onPlayEnded != null) {
          // NOTE: if user drag seekbar to end, so controller.seekTo(end) called,
          // it make official [video_player] call platform.seekTo(end).then(() => getPosition());
          // if we call widget.onPlayEnded() immediately after call seekTo(end),
          // user called may call controller.dispose() in widget.onPlayEnded() immediated,
          // which make [video_player] throw Error when it wait seekTo() finished and then call getPosition()...
          Future.delayed(const Duration(milliseconds: 300)).then((value) {
            if (isPlayEnded && widget.onPlayEnded != null) {
              widget.onPlayEnded!();
            }
          });
        }
      }
    } else {
      isPlayEnded = false;
    }
  }

  void toggleVolumeMute() {
    if (volumeValue.value > 0) {
      volumeBeforeMute = math.max(volumeValue.value, 0.3);
      widget.controller.setVolume(0);
    } else {
      widget.controller.setVolume(volumeBeforeMute);
    }
  }

  void restoreOrientation() {
    if (isDesktop) return;
    SystemChrome.setPreferredOrientations(widget.restoreOrientations);
  }

  void doClickFullScreenButton(BuildContext context) {
    widget.onFullscreenClicked?.call();
    // if (!widget._isFullscreen) {
    //   isFullscreenVisible = true;
    //   Navigator.of(context).push(
    //     MaterialPageRoute(builder: (context) {
    //       // NOTE: when setState() called in didUpdateWidget() in non-fullscreen widget, this will be called here... why ? but it sounds good here!
    //       return Material(
    //         child: ValueListenableBuilder<int>(
    //           valueListenable: controllerValue,
    //           builder: ((context, value, child) {
    //             return VideoControlPanel._fullscreen(
    //               widget.controller,
    //               key: widget.key,
    //               showClosedCaptions: showClosedCaptions,
    //               showVolumeButton: widget.showVolumeButton,
    //               onPrevClicked: widget.onPrevClicked,
    //               onNextClicked: widget.onNextClicked,
    //             );
    //           }),
    //         ),
    //       );
    //     }),
    //   ).then((value) {
    //     restoreOrientation(); // when exit fullscreen, unlock screen orientation settings
    //     isFullscreenVisible = false;
    //   });
    // } else {
    //   Navigator.of(context).pop();
    // }
    // FullScreenWindow.setFullScreen(!widget._isFullscreen);
  }

  void evaluateTextIconSize() async {
    var size = await FullScreenWindow.getScreenSize(context);
    double min = math.min(size.width, size.height);
    if (kIsWeb || Platform.isWindows) {
      iconSize = min / 36;
      iconSize = math.min(iconSize, 30);
    } else {
      iconSize = min / 15;
    }

    textSize = iconSize * 0.55;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    showClosedCaptions =
        widget._showClosedCaptions ?? ValueNotifier<bool>(false);
    widget.controller.addListener(onPlayerValueChanged);
    evaluateTextIconSize();
    onPlayerValueChanged();
  }

  @override
  void didUpdateWidget(VideoControlPanel oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != oldWidget.controller) {
      oldWidget.controller.removeListener(onPlayerValueChanged);
      widget.controller.addListener(onPlayerValueChanged);
      onPlayerValueChanged();
      setState(() {});
      Future.delayed(Duration.zero).then((value) {
        controllerValue
            .value++; //notify fullscreen widget to rebuild, async delay is needed
      });
    }
  }

  @override
  void dispose() {
    focusNode.dispose();
    widget.controller.removeListener(onPlayerValueChanged);
    panelAnimController.dispose();
    volumeAnimController.dispose();
    if (isFullscreenVisible) Navigator.of(context).pop();
    super.dispose();
  }

  String duration2TimeStr(Duration duration) {
    if (widget.controller.value.duration.inHours > 0) {
      return sprintf("%02d:%02d:%02d",
          [duration.inHours, duration.inMinutes % 60, duration.inSeconds % 60]);
    }
    return sprintf(
        "%02d:%02d", [duration.inMinutes % 60, duration.inSeconds % 60]);
  }

  void showPanel() {
    panelVisibility.value = true;
    panelAnimController.forward();
    _hidePanelTimer?.cancel();
    _hidePanelTimer = Timer(const Duration(seconds: 2), () {
      if (!mounted) return;
      if (isMouseInVolumeBar || isDraggingVolumeBar || isMouseInVolumeSlider) {
        return;
      }
      if (!playing.value) return; //don't auto hide when paused
      panelVisibility.value = false;
      panelAnimController.reverse();
      _hidePanelTimer = null;
    });
  }

  void togglePanel() {
    if (_hidePanelTimer != null) {
      _hidePanelTimer?.cancel();
      panelVisibility.value = false;
      panelAnimController.reverse();
      _hidePanelTimer = null;
    } else {
      showPanel();
    }
  }

  void togglePlayPause() {
    if (!widget.controller.value.isInitialized) return;
    if (widget.controller.value.isPlaying) {
      widget.controller.pause();
    } else {
      widget.controller.play();
    }
    widget.onPlayClicked?.call();
  }

  int _lastSeekTimestamp = 0;
  Timer? _delaySeekTimer;
  bool _delaySeeking = false;

  Future<void> doSeek(int ms) async {
    _delaySeekTimer?.cancel();
    int now = DateTime.now().millisecondsSinceEpoch;
    int elapsed = now - _lastSeekTimestamp;
    _lastSeekTimestamp = now;
    _delaySeeking = true;

    if (elapsed > 300 || elapsed < 0) {
      await widget.controller.seekTo(Duration(milliseconds: ms));
      _delaySeeking = false;
    } else {
      const delay = Duration(milliseconds: 300);
      _delaySeekTimer = Timer.periodic(delay, (timer) async {
        _delaySeekTimer = null;
        timer.cancel();
        await widget.controller.seekTo(Duration(milliseconds: ms));
        _delaySeeking = false;
      });
    }
  }

  void incrementalSeek(int ms) async {
    showPanel();
    int dst = displayPosition.value + ms;
    if (dst < 0) {
      dst = 0;
    } else if (dst >= widget.controller.value.duration.inMilliseconds) {
      return;
    }

    displayPosition.value = dst;
    await doSeek(dst);
  }

  Widget _buildPlayPauseButton(bool isCircle, double size) {
    return ValueListenableBuilder<bool>(
      valueListenable: playing,
      builder: (context, value, child) {
        return IconButton(
          iconSize: size,
          color: Colors.white,
          padding: EdgeInsets.zero,
          icon: Icon(
              isCircle
                  ? (value
                      ? Icons.pause_circle_rounded
                      : Icons.play_circle_rounded)
                  : (value ? Icons.pause_rounded : Icons.play_arrow_rounded),
              color: Colors.white),
          onPressed: () {
            if (isMouseMode) {
              togglePlayPause();
            } else {
              if (isPanelShown) {
                togglePlayPause();
                showPanel();
              } else {
                togglePanel();
              }
            }
          },
        );
      },
    );
  }

  Widget _buildDurationText() {
    return ValueListenableBuilder<Duration>(
      valueListenable: duration,
      builder: (context, value, child) {
        return Text(duration2TimeStr(value),
            style: TextStyle(fontSize: textSize, color: Colors.white));
      },
    );
  }

  Widget _buildPositionText() {
    return ValueListenableBuilder<int>(
      valueListenable: displayPosition,
      builder: (context, value, child) {
        var duration = Duration(milliseconds: value);
        return Text(duration2TimeStr(duration),
            style: TextStyle(fontSize: textSize, color: Colors.white));
      },
    );
  }

  Widget _buildSeekBar() {
    return ValueListenableBuilder<int>(
      valueListenable: displayPosition,
      builder: (context, value, child) {
        return Slider(
          focusNode: alwaysDisabledFocusNode,
          value:
              displayPosition.value < 0 ? 0 : displayPosition.value.toDouble(),
          min: 0,
          max: duration.value.inMilliseconds.toDouble(),
          onChanged: (double value) {
            showPanel();
            displayPosition.value = value.toInt();
            doSeek(value.toInt());
          },
        );
      },
    );
  }

  Widget _buildFullScreenButton() {
    return IconButton(
      color: Colors.white,
      iconSize: iconSize,
      padding: EdgeInsets.zero,
      icon: Icon(widget._isFullscreen
          ? Icons.fullscreen_exit_rounded
          : Icons.fullscreen_rounded),
      onPressed: () => doClickFullScreenButton(context),
    );
  }

  Widget _buildClosedCaptionButton() {
    return ValueListenableBuilder<bool>(
      valueListenable: hasClosedCaptionFile,
      builder: (context, value, child) {
        if (!value) return const SizedBox.shrink();
        return ValueListenableBuilder<bool>(
          valueListenable: showClosedCaptions,
          builder: (context, value, child) {
            return IconButton(
              color: Colors.white,
              iconSize: iconSize,
              padding: EdgeInsets.zero,
              icon: Icon(value
                  ? Icons.subtitles_rounded
                  : Icons.subtitles_off_outlined),
              onPressed: () {
                showClosedCaptions.value = !showClosedCaptions.value;
                showPanel();
              },
            );
          },
        );
      },
    );
  }

  Widget _buildVolumnPanel() {
    return MouseRegion(
      onEnter: (_) {
        volumeAnimController.forward();
        isMouseInVolumeBar = true;
        setState(() {});
      },
      onExit: (_) {
        if (!isDraggingVolumeBar && !isMouseInVolumeSlider) {
          volumeAnimController.reverse();
        }
        isMouseInVolumeBar = false;
        setState(() {});
        showPanel();
      },
      child: ValueListenableBuilder<double>(
        valueListenable: volumeValue,
        builder: (context, value, child) {
          bool isMute = value <= 0;
          return IconButton(
            color: Colors.white,
            iconSize: iconSize,
            padding: EdgeInsets.zero,
            icon: Icon(
                isMute ? Icons.volume_off_rounded : Icons.volume_up_rounded),
            onPressed: () => toggleVolumeMute(),
          );
        },
      ),
    );
  }

  Widget _buildVolumeSlider() {
    return SizedBox(
      width: 40,
      child: MouseRegion(
        onEnter: (_) {
          volumeAnimController.forward();
          isMouseInVolumeSlider = true;
          setState(() {});
        },
        onExit: (_) {
          if (!isDraggingVolumeBar) volumeAnimController.reverse();
          isMouseInVolumeSlider = false;
          setState(() {});
          showPanel();
        },
        child: Stack(
          children: [
            Positioned.fill(
              child: FadeTransition(
                opacity: volumeAnimation,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    border: Border.all(color: Colors.transparent),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 28),
              child: RotatedBox(
                quarterTurns: 3,
                child: SizeTransition(
                  axis: Axis.horizontal,
                  sizeFactor: volumeAnimation,
                  child: ValueListenableBuilder<double>(
                    valueListenable: volumeValue,
                    builder: (context, value, child) {
                      return MouseStateBuilder(builder: (context, mouseState) {
                        return SliderTheme(
                          data: mouseState.isMouseOver
                              ? hoverSeekBarTheme
                              : normalSeekBarTheme,
                          child: Slider(
                            min: 0,
                            max: 100,
                            value: value * 100,
                            divisions: 100,
                            onChangeStart: (_) {
                              isDraggingVolumeBar = true;
                              setState(() {});
                            },
                            onChangeEnd: (_) {
                              isDraggingVolumeBar = false;
                              setState(() {});
                              if (!isMouseInVolumeBar) {
                                volumeAnimController.reverse();
                              }
                            },
                            onChanged: (value) {
                              widget.controller.setVolume(value / 100);
                              showPanel(); // keep panel visible during dragging volume bar
                            },
                          ),
                        );
                      });
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget? _buildBottomPrevButton() {
    return (isDesktop && widget.onPrevClicked != null)
        ? IconButton(
            iconSize: iconSize,
            padding: EdgeInsets.zero,
            color: Colors.white,
            icon: const Icon(Icons.skip_previous_rounded),
            onPressed: widget.onPrevClicked,
          )
        : null;
  }

  Widget? _buildBottomNextButton() {
    return (isDesktop && widget.onNextClicked != null)
        ? IconButton(
            iconSize: iconSize,
            padding: EdgeInsets.zero,
            color: Colors.white,
            icon: const Icon(Icons.skip_next_rounded),
            onPressed: widget.onNextClicked,
          )
        : null;
  }

  Widget _buildBottomPanel() {
    Widget bottomPanel = Column(
      children: [
        if (widget.showSeekBar)
          FadeTransition(
            opacity: volumeAnimation.drive(Tween<double>(begin: 1.0, end: 0.0)),
            child: Visibility(
              visible: !(isMouseInVolumeBar ||
                  isDraggingVolumeBar ||
                  isMouseInVolumeSlider),
              child: MouseStateBuilder(
                builder: (context, mouseState) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    child: SliderTheme(
                      data: mouseState.isMouseOver
                          ? hoverSeekBarTheme
                          : normalSeekBarTheme,
                      child: SizedBox(
                        height: iconSize * 0.7,
                        child: _buildSeekBar(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              if (isDesktop && widget.showPlayPauseButton)
                _buildPlayPauseButton(false, iconSize),
              if (isDesktop && widget.onPrevClicked != null)
                _buildBottomPrevButton()!,
              if (isDesktop && widget.onNextClicked != null)
                _buildBottomNextButton()!,
              if (widget.showDurationAndPositionText)
                Container(
                    margin: const EdgeInsets.only(left: 5),
                    child: _buildPositionText()),
              if (widget.showDurationAndPositionText)
                Text(" / ",
                    style: TextStyle(fontSize: textSize, color: Colors.white)),
              if (widget.showDurationAndPositionText) _buildDurationText(),
              const Spacer(),
              if (widget.showVolumeButton) _buildVolumnPanel(),
              if (widget.showClosedCaptionButton) _buildClosedCaptionButton(),
              if (widget.showFullscreenButton && !kIsWeb)
                _buildFullScreenButton(),
            ],
          ),
        ),
      ],
    );
    bottomPanel = Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.transparent,
            isDesktop ? Colors.black38 : Colors.transparent
          ],
        ),
      ),
      child: bottomPanel,
    );
    return bottomPanel;
  }

  Widget _buildBufferingWidget() {
    return ValueListenableBuilder<bool>(
      valueListenable: buffering,
      builder: (context, value, child) {
        if (value) {
          return Stack(
            children: [
              if (widget.placeholder != null) widget.placeholder!,
              Center(
                child: SizedBox(
                  width: iconSize * 2,
                  height: iconSize * 2,
                  child: const CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 3,
                    strokeCap: StrokeCap.round,
                  ),
                ),
              ),
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  Widget _buildCloseCaptionWidget() {
    return ValueListenableBuilder<bool>(
      valueListenable: showClosedCaptions,
      builder: (context, value, child) {
        if (!value) return const SizedBox.shrink();
        return ValueListenableBuilder<String>(
          valueListenable: currentCaption,
          builder: (context, value, child) {
            return LayoutBuilder(
              builder: (context, constraints) {
                double textSize = constraints.maxWidth * 0.028;
                return Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.all(textSize / 2),
                    child: Text(
                      value,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: textSize,
                        color: Colors.white,
                        backgroundColor: Colors.black54,
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  Widget _buildVideoWidget() {
    return ValueListenableBuilder<double>(
      valueListenable: aspectRatio,
      builder: (context, value, child) {
        return Center(
          child: AspectRatio(
            aspectRatio: value,
            child: Stack(children: [
              VideoPlayer(widget.controller),
              _buildCloseCaptionWidget(),
            ]),
          ),
        );
      },
    );
  }

  Widget _buildGestureWidget() {
    int lastTapDownTime = 0;
    return GestureDetector(
      onTapUp: (details) {
        int now = DateTime.now().millisecondsSinceEpoch;
        if (now - lastTapDownTime > 300) {
          if (isMouseMode) {
            togglePlayPause();
          } else {
            togglePanel();
          }
        } else {
          // var width = context.size!.width;
          // if (details.localPosition.dx < width / 2) {
          //   incrementalSeek(-5000);
          // } else {
          //   incrementalSeek(5000);
          // }
          showPanel();
        }
        lastTapDownTime = now;
        focusNode.requestFocus();
      },
    );
  }

  Widget _buildPanelWidget() {
    Widget panelWidget = Stack(
      alignment: Alignment.center,
      children: [
        // if (!isDesktop) Container(color: Colors.black38),
        if (!widget.isGif) _buildGestureWidget(),
        if (widget.showDetailPanel)
          Positioned(
              right: widget.showFullscreenButton ? 50 : 10,
              bottom: 5,
              child: _buildVolumeSlider()),
        if (widget.showDetailPanel)
          Positioned(left: 0, bottom: 0, right: 0, child: _buildBottomPanel()),
        if (isMobile && !widget.isGif)
          Center(child: _buildPlayPauseButton(true, iconSize * 2)),
        if (!isDesktop && widget.onPrevClicked != null)
          Align(
            alignment: const FractionalOffset(0.15, 0.5),
            child: IconButton(
              onPressed: widget.onPrevClicked,
              icon: const Icon(Icons.skip_previous_rounded),
              iconSize: iconSize * 1.5,
              color: Colors.white,
              padding: EdgeInsets.zero,
            ),
          ),
        if (!isDesktop && widget.onNextClicked != null)
          Align(
            alignment: const FractionalOffset(0.85, 0.5),
            child: IconButton(
              onPressed: widget.onNextClicked,
              icon: const Icon(Icons.skip_next_rounded),
              iconSize: iconSize * 1.5,
              color: Colors.white,
              padding: EdgeInsets.zero,
            ),
          ),
      ],
    );
    panelWidget = FadeTransition(opacity: panelAnimation, child: panelWidget);

    panelWidget = ValueListenableBuilder<bool>(
      valueListenable: panelVisibility,
      builder: (context, value, child) =>
          IgnorePointer(ignoring: !value, child: child),
      child: panelWidget,
    );

    panelWidget = Stack(
      children: [
        if (!widget.isGif) _buildGestureWidget(),
        panelWidget,
      ],
    );

    panelWidget = Focus(
      autofocus: true,
      focusNode: focusNode,
      child: panelWidget,
      onKeyEvent: (node, event) {
        if (event.logicalKey == LogicalKeyboardKey.keyF) {
          if (widget.showFullscreenButton) {
            if (event is KeyUpEvent) {
              doClickFullScreenButton(context);
            }
            return KeyEventResult.handled;
          }
        } else if (event.logicalKey == LogicalKeyboardKey.escape) {
          if (widget._isFullscreen) {
            if (event is KeyUpEvent) {
              doClickFullScreenButton(context);
            }
            return KeyEventResult.handled;
          }
        } else if (event.logicalKey == LogicalKeyboardKey.space) {
          if (widget.controller.value.isInitialized) {
            if (event is KeyUpEvent) {
              showPanel();
              togglePlayPause();
            }
            return KeyEventResult.handled;
          }
        } else if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
          if (widget.controller.value.isInitialized) {
            if (event is! KeyUpEvent) incrementalSeek(-5000);
            return KeyEventResult.handled;
          }
        } else if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
          if (widget.controller.value.isInitialized) {
            if (event is! KeyUpEvent) incrementalSeek(5000);
            return KeyEventResult.handled;
          }
        } else if (event.logicalKey == LogicalKeyboardKey.keyM) {
          if (isDesktop) {
            if (event is KeyUpEvent) {
              toggleVolumeMute();
              showPanel();
            }
            return KeyEventResult.handled;
          }
        }
        return KeyEventResult.ignored;
      },
    );

    panelWidget = ValueListenableBuilder<bool>(
      valueListenable: panelVisibility,
      builder: ((context, value, child) {
        return MouseRegion(
          // issue: https://github.com/flutter/flutter/issues/76622
          // because when set cursor to [none] after mouse freeze 2 seconds,
          // mouse must move 1 pixel to make MouseRegion apply the cursor settings...
          cursor: panelVisibility.value
              ? SystemMouseCursors.basic
              : SystemMouseCursors.none,
          child: child,
          onHover: (_) {
            // NOTE: touch on android will cause onHover... why ???
            if (isMouseMode) {
              showPanel();
            }
          },
          onEnter: (_) => isMouseMode = true,
          onExit: (_) => isMouseMode = false,
        );
      }),
      child: panelWidget,
    );
    return panelWidget;
  }

  Widget _buildSmallWidget() {
    return Positioned(
      left: 10,
      bottom: 10,
      child: Row(
        children: [
          ValueListenableBuilder<bool>(
            valueListenable: playing,
            builder: (context, playing, child) {
              return VideoItemBuilder.buildRoundButton(
                context,
                icon: Icon(
                  playing ? Icons.pause_rounded : Icons.play_arrow_rounded,
                  size: 15,
                  color: Colors.white,
                ),
                background: Colors.black38.withOpacity(0.6),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                radius: 4,
                onTap: togglePlayPause,
              );
            },
          ),
          if (widget.isGif) const SizedBox(width: 4),
          if (widget.isGif)
            VideoItemBuilder.buildTransparentTag(
              context,
              text: "GIF",
              radius: 4,
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            ),
          if (widget.showAltButton) const SizedBox(width: 4),
          if (widget.showAltButton)
            VideoItemBuilder.buildTransparentTag(
              context,
              text: "ALT",
              radius: 4,
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              onTap: widget.onAltClicked,
            ),
          if (!widget.isGif) const SizedBox(width: 4),
          if (!widget.isGif)
            ValueListenableBuilder<bool>(
              valueListenable: buffering,
              builder: (context, buffering, child) {
                if (buffering) {
                  return const SizedBox.shrink();
                } else {
                  return ValueListenableBuilder<Duration>(
                    valueListenable: duration,
                    builder: (context, duration, child) {
                      return ValueListenableBuilder<int>(
                        valueListenable: displayPosition,
                        builder: (context, displayPosition, child) {
                          var str = duration2TimeStr(Duration(
                              milliseconds:
                                  duration.inMilliseconds - displayPosition));
                          return VideoItemBuilder.buildTransparentTag(
                            context,
                            text: str,
                            radius: 4,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4,
                              vertical: 2,
                            ),
                          );
                        },
                      );
                    },
                  );
                }
              },
            ),
        ],
      ),
    );
  }

  Widget _buildSmallFullScreen() {
    return Positioned(
      right: 10,
      bottom: 10,
      child: VideoItemBuilder.buildRoundButton(
        context,
        icon:
            const Icon(Icons.fullscreen_rounded, size: 15, color: Colors.white),
        background: Colors.black38.withOpacity(0.6),
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        radius: 4,
        onTap: () {
          doClickFullScreenButton(context);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return VideoItemBuilder.buildClickItem(
      Stack(
        children: [
          Container(color: widget.bgColor),
          _buildVideoWidget(),
          _buildBufferingWidget(),
          _buildPanelWidget(),
          if (!widget.showDetailPanel) _buildSmallWidget(),
          if (!widget.showDetailPanel && !widget.isGif) _buildSmallFullScreen(),
        ],
      ),
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

final alwaysDisabledFocusNode = AlwaysDisabledFocusNode();

class VideoItemBuilder {
  static buildClickItem(
    Widget child, {
    bool clickable = true,
  }) {
    return MouseRegion(
      cursor: clickable ? SystemMouseCursors.click : SystemMouseCursors.basic,
      child: child,
    );
  }

  static Widget buildRoundButton(
    BuildContext context, {
    String? text,
    Function()? onTap,
    Color? background,
    Widget? icon,
    EdgeInsets? padding,
    double radius = 50,
    Color? color,
    double fontSizeDelta = 0,
    TextStyle? textStyle,
    double? width,
    bool align = false,
    bool disabled = false,
    bool feedback = false,
    bool reversePosition = false,
  }) {
    Color fBackground = background ?? Theme.of(context).cardColor;
    Color? textColor = color ??
        (background != null
            ? Colors.white
            : disabled
                ? Colors.grey
                : Theme.of(context).textTheme.titleSmall?.color);
    Widget titleWidget = Text(
      text ?? "",
      textAlign: TextAlign.center,
      style: textStyle ??
          Theme.of(context).textTheme.titleSmall?.apply(
                color: textColor,
                fontWeightDelta: 2,
                fontSizeDelta: fontSizeDelta,
              ),
      maxLines: 1,
    );

    return Material(
      color: fBackground.withAlpha(fBackground.alpha ~/ (disabled ? 1.5 : 1)),
      borderRadius: BorderRadius.circular(radius),
      child: InkWell(
        onTap: onTap != null && !disabled
            ? () {
                onTap();
                if (feedback) HapticFeedback.lightImpact();
              }
            : null,
        enableFeedback: true,
        borderRadius: BorderRadius.circular(radius),
        child: VideoItemBuilder.buildClickItem(
          clickable: onTap != null,
          Container(
            width: width,
            padding: padding ??
                const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(radius),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (icon != null && !reversePosition) icon,
                if (icon != null && !reversePosition && isNotEmpty(text))
                  const SizedBox(width: 5),
                align
                    ? Expanded(flex: 100, child: titleWidget)
                    : Flexible(child: titleWidget),
                if (icon != null && reversePosition && isNotEmpty(text))
                  const SizedBox(width: 5),
                if (icon != null && reversePosition) icon,
                if (align) const Spacer(flex: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static bool isEmpty(String? str) {
    return str == null || str.isEmpty;
  }

  static bool isNotEmpty(String? str) {
    return !isEmpty(str);
  }

  static Widget buildTransparentTag(
    BuildContext context, {
    required String text,
    bool isCircle = false,
    int? width,
    int? height,
    double opacity = 0.6,
    double? radius,
    EdgeInsetsGeometry? padding,
    double? fontSizeDelta,
    dynamic icon,
    Function()? onTap,
  }) {
    return VideoItemBuilder.buildClickItem(
      clickable: onTap != null,
      GestureDetector(
        onTap: onTap,
        child: Container(
          padding: isCircle
              ? padding ?? const EdgeInsets.all(5)
              : padding ??
                  const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
            color: Colors.black38.withOpacity(opacity),
            borderRadius: isCircle
                ? null
                : BorderRadius.all(Radius.circular(radius ?? 50)),
          ),
          child: Row(
            children: [
              if (icon != null) icon,
              if (icon != null && (text.isNotEmpty)) const SizedBox(width: 3),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall?.apply(
                      color: Colors.white,
                      fontSizeDelta: fontSizeDelta ?? -1,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
