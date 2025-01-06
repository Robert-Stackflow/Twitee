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

import 'dart:io';
import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:twitee/Openapi/export.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/color_util.dart';
import 'package:twitee/Utils/hive_util.dart';
import 'package:twitee/Utils/image_util.dart';
import 'package:twitee/Utils/tweet_util.dart';
import 'package:twitee/Widgets/Window/window_button.dart';
import 'package:twitee/Widgets/Window/window_caption.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_control_panel/video_player_control_panel.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../Utils/asset_util.dart';
import '../../Utils/constant.dart';
import '../../Utils/ilogger.dart';
import '../../Utils/responsive_util.dart';
import '../../Utils/utils.dart';
import '../../Utils/video_player_manager.dart';
import '../Dialog/dialog_builder.dart';
import '../General/PhotoView/photo_view.dart';
import '../General/PhotoView/photo_view_gallery.dart';
import '../Item/item_builder.dart';

enum DownloadState { none, loading, succeed, failed }

class HeroMediaViewScreen extends StatefulWidget {
  const HeroMediaViewScreen({
    super.key,
    required this.medias,
    this.initialScale = PhotoViewComputedScale.contained,
    this.minScale = PhotoViewComputedScale.contained,
    this.maxScale,
    this.initIndex,
    this.useMainColor = true,
    this.captions,
    this.onIndexChanged,
    this.transparentBar = true,
    this.title,
    this.tagPrefix,
    this.mainColors,
    this.onDownloadSuccess,
  });

  final String? title;
  final String? tagPrefix;
  final List<Media> medias;
  final List<String>? captions;
  final dynamic initialScale;
  final dynamic minScale;
  final dynamic maxScale;
  final int? initIndex;
  final bool useMainColor;
  final List<Color>? mainColors;
  final bool transparentBar;
  final Function(int)? onIndexChanged;
  final Function()? onDownloadSuccess;

  @override
  State<HeroMediaViewScreen> createState() => HeroMediaViewScreenState();
}

class HeroMediaViewScreenState extends State<HeroMediaViewScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  late final List<Media> medias;
  late final List<String> captions;
  late final dynamic initialScale;
  late final dynamic minScale;
  late final dynamic maxScale;
  int currentIndex = 0;
  List<Color> mainColors = [];
  late dynamic downloadIcon;
  DownloadState downloadState = DownloadState.none;
  late dynamic allDownloadIcon;
  DownloadState allDownloadState = DownloadState.none;
  late PageController _pageController;
  final List<PhotoViewController> _viewControllers = [];
  bool isHD = false;

  final Map<String, VideoPlayerController> _videoControllers = {};
  final Map<String, bool> _isVisibleMap = {};
  final VideoPlaybackManager _playbackManager = VideoPlaybackManager();

  initVideo() {
    List<Media> videoMedia = widget.medias
        .where((element) => element.type == MediaType.video)
        .toList();
    for (Media media in videoMedia) {
      _createController(TweetUtil.getMp4Url(media));
    }
  }

  _createController(
    String videoUrl, {
    bool isGif = false,
  }) {
    _videoControllers[videoUrl] = VideoPlayerController.networkUrl(
      Uri.parse(videoUrl),
      videoPlayerOptions: VideoPlayerOptions(),
    );
    VideoPlayerController controller = _videoControllers[videoUrl]!;
    controller.initialize().then((value) {
      if (controller.value.isInitialized) {
        if (isGif) {
          controller.setLooping(true);
          controller.play();
        } else {
          if (_isVisibleMap[videoUrl] ?? false) {
            _playbackManager.play(controller);
          }
        }
      }
    }).catchError((e, t) {
      ILogger.error("VideoController", "controller.initialize() error.", e, t);
    });
  }

  @override
  void initState() {
    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
    super.initState();
    setDownloadState(DownloadState.none, recover: false);
    setAllDownloadState(DownloadState.none, recover: false);
    medias = widget.medias;
    _viewControllers.addAll(List.generate(medias.length, (index) {
      return PhotoViewController();
    }));
    initVideo();
    captions =
        widget.captions ?? medias.map((e) => e.extAltText ?? "").toList();
    minScale = widget.minScale;
    maxScale = widget.maxScale;
    initialScale = widget.initialScale;
    currentIndex = widget.initIndex ?? 0;
    currentIndex = max(0, min(currentIndex, medias.length - 1));
    _pageController = PageController(initialPage: currentIndex);
    if (widget.mainColors != null &&
        widget.mainColors!.length >= medias.length &&
        HiveUtil.getBool(HiveUtil.followMainColorKey)) {
      mainColors = widget.mainColors!;
    } else {
      mainColors = List.filled(medias.length, Colors.black);
      if (widget.useMainColor &&
          HiveUtil.getBool(HiveUtil.followMainColorKey)) {
        ColorUtil.getMainColors(
          context,
          medias.map((e) => getImageUrlByMedia(e)).toList(),
        ).then((value) {
          if (mounted) setState(() {});
          mainColors = value;
        });
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    for (VideoPlayerController controller in _videoControllers.values) {
      controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: Stack(
          children: [
            _buildAppBar(),
            if (ResponsiveUtil.isDesktop()) const WindowMoveHandle(),
          ],
        ),
      ),
      extendBody: true,
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      body: Stack(
        alignment: Alignment.center,
        children: [
          _buildMultiplePage(),
          if (getCaption(currentIndex).isNotEmpty)
            Positioned(
              bottom: 60,
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.sizeOf(context).width - 100),
                  child: ItemBuilder.buildTransparentTag(
                    context,
                    text: getCaption(currentIndex),
                    radius: 8,
                    opacity: 0.4,
                    fontSizeDelta: 3,
                    expanded: true,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    onTap: () {
                      DialogBuilder.showInfoDialog(context,
                          title: "ALT", message: getCaption(currentIndex));
                    },
                  ),
                ),
              ),
            ),
          if (medias.length > 1 && ResponsiveUtil.isDesktop())
            Positioned(
              left: 16,
              child: ItemBuilder.buildIconButton(
                context: context,
                icon: const Icon(
                  Icons.keyboard_arrow_left_rounded,
                  size: 30,
                  color: Colors.white,
                ),
                background: currentIndex == 0
                    ? Colors.black.withOpacity(0.1)
                    : Colors.black.withOpacity(0.4),
                onTap: currentIndex == 0
                    ? null
                    : () {
                        _pageController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      },
              ),
            ),
          if (medias.length > 1 && ResponsiveUtil.isDesktop())
            Positioned(
              right: 16,
              child: ItemBuilder.buildIconButton(
                context: context,
                icon: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 30,
                  color: Colors.white,
                ),
                background: currentIndex == medias.length - 1
                    ? Colors.black.withOpacity(0.1)
                    : Colors.black.withOpacity(0.4),
                onTap: currentIndex == medias.length - 1
                    ? null
                    : () {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      },
              ),
            ),
        ],
      ),
    );
  }

  String getImageUrlByMedia(Media media) {
    String url = TweetUtil.getMediaImageUrl(media);
    return isHD ? ImageUtil.getOriginalUrl(url) : url;
  }

  String getPlayUrlByMedia(Media media) {
    switch (media.type) {
      case MediaType.photo:
        return getImageUrlByMedia(media);
      case MediaType.video:
        return TweetUtil.getMp4Url(media);
      case MediaType.animatedGif:
        return TweetUtil.getGifVideoUrl(media);
      default:
        return "";
    }
  }

  getCaption(index) {
    if (index > captions.length - 1) return "";
    return captions[index];
  }

  getPreferedScale(dynamic item) {
    dynamic preferScale = initialScale;
    return preferScale;
  }

  PointerSignalEventListener get onPointerSignal => (event) {
        if (event is PointerScrollEvent &&
            currentIndex >= 0 &&
            currentIndex < medias.length) {
          final delta = event.scrollDelta.dy;
          final scale = _viewControllers[currentIndex].scale ?? 1.0;
          final newScale = scale - delta / 1000;
          _viewControllers[currentIndex].scale = newScale.clamp(0.1, 10.0);
        }
      };

  Widget _buildMultiplePage() {
    return Listener(
      onPointerSignal: onPointerSignal,
      child: PhotoViewGallery.builder(
        scrollPhysics: const ClampingScrollPhysics(),
        pageController: _pageController,
        backgroundDecoration:
            BoxDecoration(color: Utils.getDarkColor(mainColors[currentIndex])),
        loadingBuilder: (context, event) => _buildLoading(
          event,
          index: currentIndex,
        ),
        builder: (BuildContext context, int index) {
          var media = medias[index];
          if (media.type == MediaType.photo ||
              (media.type != MediaType.photo &&
                  !ResponsiveUtil.showVideoPlayer())) {
            return PhotoViewGalleryPageOptions(
              controller: _viewControllers[index],
              imageProvider:
                  CachedNetworkImageProvider(getImageUrlByMedia(media)),
              initialScale: getPreferedScale(medias[index]),
              minScale: minScale,
              maxScale: maxScale,
              heroAttributes: PhotoViewHeroAttributes(
                tag: Utils.getHeroTag(
                  tagPrefix: widget.tagPrefix,
                  url: getImageUrlByMedia(medias[index]),
                ),
              ),
              filterQuality: FilterQuality.high,
              errorBuilder: (context, error, stackTrace) {
                return ItemBuilder.buildError(
                  context: context,
                  text: error.toString(),
                  onTap: () {
                    setState(() {});
                  },
                  white: true,
                );
              },
            );
          } else {
            return PhotoViewGalleryPageOptions.customChild(
              controller: _viewControllers[index],
              child: _buildMedia(medias[index]),
              minScale: minScale,
              maxScale: maxScale,
              initialScale: getPreferedScale(medias[index]),
              heroAttributes: PhotoViewHeroAttributes(
                tag: Utils.getHeroTag(
                  tagPrefix: widget.tagPrefix,
                  url: getImageUrlByMedia(medias[index]),
                ),
              ),
              filterQuality: FilterQuality.high,
            );
          }
        },
        itemCount: medias.length,
        onPageChanged: (index) async {
          if (widget.onIndexChanged != null) {
            widget.onIndexChanged!(index);
          }
          setState(() {
            currentIndex = index;
          });
          setDownloadState(DownloadState.none, recover: false);
        },
      ),
    );
  }

  _buildMedia(Media media) {
    switch (media.type) {
      case MediaType.video:
      case MediaType.animatedGif:
        return _buildVideoMedia(media);
      default:
        return emptyWidget;
    }
  }

  _buildVideoMedia(
    Media media, {
    double radius = 0,
  }) {
    double ratio = media.sizes.large.w / media.sizes.large.h;
    ratio = ratio.clamp(0.8, 2);
    bool isGif = media.type == MediaType.animatedGif;
    String videoUrl =
        isGif ? TweetUtil.getGifVideoUrl(media) : TweetUtil.getMp4Url(media);
    VideoPlayerController? controller = _videoControllers[videoUrl];
    if (controller == null) {
      _createController(videoUrl, isGif: isGif);
    }
    controller = _videoControllers[videoUrl];
    if (controller == null) return emptyWidget;
    var container = Container(
      decoration: BoxDecoration(
        color: mainColors[medias.indexOf(media)],
        borderRadius: BorderRadius.circular(radius),
      ),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.sizeOf(context).width,
        maxHeight: MediaQuery.sizeOf(context).height - 180,
      ),
      child: VideoControlPanel(
        controller,
        bgColor: mainColors[medias.indexOf(media)],
        showClosedCaptionButton: false,
        showFullscreenButton: false,
        showDetailPanel: true,
        showPlayPauseButton: true,
        showSeekBar: true,
        isGif: false,
        showDurationAndPositionText: true,
        onPlayClicked: () {
          if (!isGif) {
            if (controller!.value.isPlaying) {
              _playbackManager.play(controller);
            } else {
              _playbackManager.pause(controller);
            }
          }
        },
        placeholder: ItemBuilder.buildCachedImage(
          imageUrl: getImageUrlByMedia(media),
          context: context,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
          showLoading: false,
        ),
      ),
    );
    return VisibilityDetector(
      key: Key(videoUrl),
      onVisibilityChanged: (info) {
        if (!isGif) {
          VideoPlayerController? videoController = _videoControllers[videoUrl];
          if (videoController == null) return;
          bool isVisible = _isVisibleMap[videoUrl] ?? false;
          if (!isVisible && info.visibleFraction > 0.5) {
            if (!videoController.value.isPlaying) {
              _playbackManager.play(videoController);
            }
            setState(() {
              isVisible = true;
              _isVisibleMap[videoUrl] = true;
            });
          } else if (isVisible && info.visibleFraction < 0.5) {
            if (videoController.value.isPlaying) {
              _playbackManager.pause(videoController);
            }
            setState(() {
              isVisible = false;
              _isVisibleMap[videoUrl] = false;
            });
          }
        }
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: container,
      ),
    );
  }

  void setDownloadState(DownloadState state, {bool recover = true}) {
    switch (state) {
      case DownloadState.none:
        downloadIcon = AssetUtil.load(AssetUtil.downloadWhiteIcon);
        break;
      case DownloadState.loading:
        downloadIcon = Container(
          width: 20,
          height: 20,
          padding: const EdgeInsets.all(2),
          child: const CircularProgressIndicator(
            color: Colors.white,
            strokeWidth: 2,
            strokeCap: StrokeCap.round,
          ),
        );
        break;
      case DownloadState.succeed:
        downloadIcon = const Icon(Icons.check_rounded, color: Colors.green);
        break;
      case DownloadState.failed:
        downloadIcon =
            const Icon(Icons.warning_amber_rounded, color: Colors.redAccent);
        break;
    }
    downloadState = state;
    if (mounted) setState(() {});
    if (recover) {
      Future.delayed(const Duration(seconds: 2), () {
        setDownloadState(DownloadState.none, recover: false);
      });
    }
  }

  void setAllDownloadState(DownloadState state, {bool recover = true}) {
    switch (state) {
      case DownloadState.none:
        allDownloadIcon =
            const Icon(Icons.done_all_rounded, color: Colors.white, size: 22);
        break;
      case DownloadState.loading:
        allDownloadIcon = Container(
          width: 20,
          height: 20,
          padding: const EdgeInsets.all(2),
          child: const CircularProgressIndicator(
            color: Colors.white,
            strokeWidth: 2,
            strokeCap: StrokeCap.round,
          ),
        );
        break;
      case DownloadState.succeed:
        allDownloadIcon = const Icon(Icons.check_rounded, color: Colors.green);
        break;
      case DownloadState.failed:
        allDownloadIcon =
            const Icon(Icons.warning_amber_rounded, color: Colors.redAccent);
        break;
    }
    allDownloadState = state;
    if (mounted) setState(() {});
    if (recover) {
      Future.delayed(const Duration(seconds: 2), () {
        setAllDownloadState(DownloadState.none, recover: false);
      });
    }
  }

  PreferredSizeWidget _buildAppBar() {
    return ItemBuilder.buildAppBar(
      context: context,
      transparent: widget.transparentBar,
      backgroundColor: widget.transparentBar
          ? Colors.transparent
          : Utils.getDarkColor(mainColors[currentIndex]).withOpacity(0.5),
      leading: Icons.arrow_back_rounded,
      leadingColor: Colors.white,
      leftSpacing: 6,
      onLeadingTap: () {
        Navigator.pop(context);
      },
      title: medias.length > 1
          ? Text(
              "${currentIndex + 1}/${medias.length}",
              style: Theme.of(context).textTheme.titleLarge?.apply(
                    color: Colors.white,
                  ),
            )
          : widget.title != null
              ? Text(
                  widget.title!,
                  style: Theme.of(context).textTheme.titleLarge?.apply(
                        color: Colors.white,
                      ),
                )
              : emptyWidget,
      actions: [
        // if (Utils.isNotEmpty(medias[currentIndex].extAltText))
        //   ToolButton(
        //     context: context,
        //     iconBuilder: (context) => const Icon(Icons.text_fields_rounded,
        //         color: Colors.white, size: 22),
        //     onTap: () {
        //       DialogBuilder.showInfoDialog(context,
        //           title: "ALT", message: medias[currentIndex].extAltText!);
        //     },
        //   ),
        // if (Utils.isNotEmpty(medias[currentIndex].extAltText) &&
        //     medias[currentIndex].type == MediaType.photo)
        //   const SizedBox(width: 5),
        if (medias[currentIndex].type == MediaType.photo)
          ToolButton(
            context: context,
            iconBuilder: (context) => Icon(
              isHD ? Icons.hd_rounded : Icons.hd_outlined,
              color: Colors.white,
              size: 22,
            ),
            onTap: () {
              isHD = !isHD;
              setState(() {});
            },
          ),
        const SizedBox(width: 5),
        ToolButton(
          context: context,
          iconBuilder: (context) => Padding(
            padding: const EdgeInsets.all(6),
            child: AssetUtil.load(AssetUtil.linkWhiteIcon),
          ),
          onTap: () {
            String toast = "已复制图片链接";
            switch (medias[currentIndex].type) {
              case MediaType.video:
                toast = "已复制视频链接";
                break;
              case MediaType.animatedGif:
                toast = "已复制GIF链接";
                break;
              default:
                break;
            }
            Utils.copy(
              context,
              getPlayUrlByMedia(medias[currentIndex]),
              toastText: toast,
            );
          },
        ),
        const SizedBox(width: 5),
        ToolButton(
          context: context,
          iconBuilder: (context) =>
              const Icon(Icons.share_rounded, color: Colors.white, size: 22),
          onTap: () {
            ImageUtil.shareImage(
              context,
              getImageUrlByMedia(medias[currentIndex]),
            );
          },
        ),
        const SizedBox(width: 5),
        ToolButton(
          context: context,
          iconBuilder: (context) => Padding(
            padding: const EdgeInsets.all(6),
            child: downloadIcon,
          ),
          onTap: () {
            if (downloadState == DownloadState.none) {
              setDownloadState(DownloadState.loading, recover: false);
              ImageUtil.saveMedia(
                context,
                medias[currentIndex],
              ).then((res) {
                if (res) {
                  widget.onDownloadSuccess?.call();
                  setDownloadState(DownloadState.succeed);
                } else {
                  setDownloadState(DownloadState.failed);
                }
              });
            }
          },
        ),
        const SizedBox(width: 5),
        if (medias.length > 1)
          ToolButton(
            context: context,
            iconBuilder: (context) => Padding(
              padding: const EdgeInsets.all(6),
              child: allDownloadIcon,
            ),
            onTap: () {
              if (allDownloadState == DownloadState.none) {
                setAllDownloadState(DownloadState.loading, recover: false);
                ImageUtil.saveMedias(
                  context,
                  medias,
                ).then((res) {
                  if (res) {
                    widget.onDownloadSuccess?.call();
                    setAllDownloadState(DownloadState.succeed);
                  } else {
                    setAllDownloadState(DownloadState.failed);
                  }
                });
              }
            },
          ),
        if (medias.length > 1) const SizedBox(width: 5),
        if (ResponsiveUtil.isLandscape())
          ToolButton(
            context: context,
            iconBuilder: (context) =>
                const Icon(Icons.close_rounded, color: Colors.white, size: 22),
            onTap: () {
              dialogNavigatorState?.popPage();
            },
          ),
        if (ResponsiveUtil.isLandscape()) const SizedBox(width: 9),
      ],
    );
  }

  Widget _buildLoading(
    ImageChunkEvent? event, {
    int index = 0,
  }) {
    return ItemBuilder.buildLoadingDialog(
      context,
      bottomPadding: 0,
      showText: false,
      size: 40,
      forceDark: true,
      background: Colors.transparent,
    );
  }
}
