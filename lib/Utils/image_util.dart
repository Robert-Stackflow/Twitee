import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Utils/tweet_util.dart';
import 'package:twitee/Utils/utils.dart';

import '../Openapi/models/media.dart';
import '../Openapi/models/media_type.dart';
import 'file_util.dart';
import 'hive_util.dart';
import 'itoast.dart';

class ImageUtil {
  static List<String> getOriginalUrls(List<String> urls) {
    return urls.map((e) => getOriginalUrl(e)).toList();
  }

  static String getOriginalUrl(String url) {
    if (FileUtil.getFileExtension(url) == "jpg") {
      return "$url?format=jpg&name=orig";
    } else if (FileUtil.getFileExtension(url) == "png") {
      return "$url?format=png&name=orig";
    }
    return url;
  }

  static Future<ShareResultStatus> shareImage(
    BuildContext context,
    String imageUrl, {
    bool showToast = true,
    String? message,
  }) async {
    CachedNetworkImage image = CachedNetworkImage(
        imageUrl: imageUrl, filterQuality: FilterQuality.high);
    BaseCacheManager manager = image.cacheManager ?? DefaultCacheManager();
    Map<String, String> headers = image.httpHeaders ?? {};
    File file = await manager.getSingleFile(
      image.imageUrl,
      headers: headers,
    );
    final result = await Share.shareXFiles([XFile(file.path)], text: message);
    if (result.status == ShareResultStatus.success) {
      IToast.showTop("分享成功");
    } else if (result.status == ShareResultStatus.dismissed) {
      IToast.showTop("取消分享");
    } else {
      IToast.showTop("分享失败");
    }
    return result.status;
  }

  static Future<File> getImageFile(
    BuildContext context,
    String imageUrl, {
    bool showToast = true,
  }) async {
    CachedNetworkImage image = CachedNetworkImage(
        imageUrl: imageUrl, filterQuality: FilterQuality.high);
    BaseCacheManager manager = image.cacheManager ?? DefaultCacheManager();
    Map<String, String> headers = image.httpHeaders ?? {};
    return await manager.getSingleFile(
      image.imageUrl,
      headers: headers,
    );
  }

  static Future<File> copyAndRenameFile(File file, String newFileName) async {
    String dir = file.parent.path;
    String newPath = '$dir/$newFileName';
    File copiedFile = await file.copy(newPath);
    await copiedFile.rename(newPath);
    return copiedFile;
  }

  static Future<bool> saveImage(
    BuildContext context,
    String imageUrl, {
    bool showToast = true,
    String? fileName,
  }) async {
    try {
      CachedNetworkImage image = CachedNetworkImage(
          imageUrl: imageUrl, filterQuality: FilterQuality.high);
      BaseCacheManager manager = image.cacheManager ?? DefaultCacheManager();
      Map<String, String> headers = image.httpHeaders ?? {};
      File file = await manager.getSingleFile(
        image.imageUrl,
        headers: headers,
      );
      String finalFileName =
          fileName ?? FileUtil.getFileNameWithExtension(imageUrl);
      File copiedFile = await copyAndRenameFile(file, finalFileName);
      if (ResponsiveUtil.isMobile()) {
        var result = await ImageGallerySaver.saveFile(
          copiedFile.path,
          name: finalFileName,
        );
        bool success = result != null && result['isSuccess'];
        if (showToast) {
          if (success) {
            IToast.showTop("图片已保存至相册");
          } else {
            IToast.showTop("保存失败，请重试");
          }
        }
        return success;
      } else {
        String? saveDirectory = await checkSaveDirectory(context);
        if (Utils.isNotEmpty(saveDirectory)) {
          String newPath = '$saveDirectory/$finalFileName';
          await copiedFile.copy(newPath);
          if (showToast) {
            IToast.showTop("图片已保存至$saveDirectory");
          }
          return true;
        } else {
          IToast.showTop("保存失败，请设置图片保存路径");
          return false;
        }
      }
    } catch (e) {
      if (e is PathNotFoundException) {
        IToast.showTop("保存路径不存在");
      }
      IToast.showTop("保存失败，请重试");
      return false;
    }
  }

  static Future<bool> saveImages(
    BuildContext context,
    List<String> imageUrls, {
    bool showToast = true,
  }) async {
    try {
      List<bool> statusList = await Future.wait(imageUrls.map((e) async {
        return await saveImage(context, e, showToast: false);
      }).toList());
      bool result = statusList.every((element) => element);
      if (showToast) {
        if (result) {
          if (ResponsiveUtil.isMobile()) {
            IToast.showTop("所有图片已保存至相册");
          } else {
            String? saveDirectory = await checkSaveDirectory(context);
            IToast.showTop("所有图片已保存至$saveDirectory");
          }
        } else {
          IToast.showTop("保存失败，请重试");
        }
      }
      return result;
    } catch (e) {
      IToast.showTop("保存失败，请重试");
      return false;
    }
  }

  static Future<bool> saveMedia(
    BuildContext context,
    Media media, {
    bool showToast = true,
    bool showSnackBar = true,
  }) async {
    Future<bool> download() async {
      switch (media.type) {
        case MediaType.photo:
          String url =
              ImageUtil.getOriginalUrl(TweetUtil.getMediaImageUrl(media));
          return saveImage(
            context,
            ImageUtil.getOriginalUrl(TweetUtil.getMediaImageUrl(media)),
            fileName: FileUtil.getFileNameWithExtension(url),
            showToast: showToast,
          );
        case MediaType.video:
        case MediaType.animatedGif:
          return saveVideoByMedia(context, media, showToast: showToast);
        default:
          return false;
      }
    }

    if (showSnackBar) {
      return await IToast.showLoadingSnackbar(
        "正在下载${TweetUtil.getMediaDescription(media)}",
        download,
      );
    } else {
      return download();
    }
  }

  static Future<bool> saveMedias(
    BuildContext context,
    List<Media> medias, {
    bool showToast = true,
  }) async {
    var description = TweetUtil.getMediasDescription(medias);
    return await IToast.showLoadingSnackbar(
      "正在下载${medias.length > 1 ? "所有" : ""}$description",
      () async {
        try {
          List<bool> statusList = await Future.wait(medias.map((e) async {
            return await saveMedia(context, e,
                showToast: false, showSnackBar: false);
          }).toList());
          bool result = statusList.every((element) => element);
          if (showToast) {
            if (result) {
              if (ResponsiveUtil.isMobile()) {
                IToast.showTop("所有$description已保存至相册");
              } else {
                String? saveDirectory = await checkSaveDirectory(context);
                IToast.showTop("所有$description已保存至$saveDirectory");
              }
            } else {
              IToast.showTop("保存失败，请重试");
            }
          }
          return result;
        } catch (e) {
          IToast.showTop("保存失败，请重试");
          return false;
        }
      },
    );
  }

  static Future<String?> checkSaveDirectory(BuildContext context) async {
    if (ResponsiveUtil.isDesktop()) {
      String? saveDirectory = HiveUtil.getString(HiveUtil.savePathKey);
      if (Utils.isEmpty(saveDirectory)) {
        await Future.delayed(const Duration(milliseconds: 300), () async {
          String? selectedDirectory = await FileUtil.getDirectoryPath(
            dialogTitle: "选择图片/视频保存路径",
            lockParentWindow: true,
          );
          if (selectedDirectory != null) {
            saveDirectory = selectedDirectory;
            HiveUtil.put(HiveUtil.savePathKey, selectedDirectory);
          }
        });
      }
      if (Utils.isNotEmpty(saveDirectory)) {
        Directory(saveDirectory!).createSync(recursive: true);
      }
      return saveDirectory;
    }
    return null;
  }

  static Future<bool> saveVideoByMedia(
    BuildContext context,
    Media media, {
    bool showToast = true,
    Function(int, int)? onReceiveProgress,
  }) async {
    String url = "";
    if (media.type == MediaType.video) {
      url = TweetUtil.getMp4Url(media);
    } else {
      url = TweetUtil.getGifVideoUrl(media);
    }
    return saveVideo(
      context,
      url,
      fileName: FileUtil.getFileNameWithExtension(url),
      showToast: showToast,
      onReceiveProgress: onReceiveProgress,
    );
  }

  static Future<bool> saveVideo(
    BuildContext context,
    String videoUrl, {
    bool showToast = true,
    String? fileName,
    Function(int, int)? onReceiveProgress,
  }) async {
    try {
      var appDocDir = await getTemporaryDirectory();
      String finalFileName =
          fileName ?? FileUtil.getFileNameWithExtension(videoUrl);
      String savePath = appDocDir.path + finalFileName;
      await Dio()
          .download(videoUrl, savePath, onReceiveProgress: onReceiveProgress);
      if (ResponsiveUtil.isMobile()) {
        var result = await ImageGallerySaver.saveFile(
          savePath,
          name: finalFileName,
        );
        bool success = result != null && result['isSuccess'];
        if (showToast) {
          if (success) {
            IToast.showTop("视频已保存");
          } else {
            IToast.showTop("保存失败，请重试");
          }
        }
        return success;
      } else {
        String? saveDirectory = await checkSaveDirectory(context);
        if (Utils.isNotEmpty(saveDirectory)) {
          String newPath = '$saveDirectory/$finalFileName';
          await File(savePath).copy(newPath);
          if (showToast) {
            IToast.showTop("视频已保存至$saveDirectory");
          }
          return true;
        } else {
          IToast.showTop("保存失败，请设置视频保存路径");
          return false;
        }
      }
    } catch (e) {
      if (e is PathNotFoundException) {
        IToast.showTop("保存路径不存在");
      }
      IToast.showTop("保存失败，请重试");
      return false;
    }
  }
}
