import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Utils/utils.dart';

import '../Models/filename_field.dart';
import '../Models/illust.dart';
import 'constant.dart';
import 'file_util.dart';
import 'hive_util.dart';
import 'itoast.dart';

class ImageUtil {
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
      File copiedFile = await copyAndRenameFile(
          file, fileName ?? FileUtil.getFileNameWithExtension(imageUrl));
      if (ResponsiveUtil.isMobile()) {
        var result = await ImageGallerySaver.saveFile(
          copiedFile.path,
          name: fileName ?? FileUtil.getFileName(imageUrl),
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
          String newPath =
              '$saveDirectory/${fileName ?? FileUtil.getFileName(imageUrl)}';
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

  static Future<bool> saveIllust(
    BuildContext context,
    Illust illust, {
    bool showToast = true,
  }) async {
    return saveImage(context, illust.url,
        fileName: getFileNameByIllust(illust), showToast: showToast);
  }

  static getFileNameByIllust(Illust illust) {
    String fileNameFormat = HiveUtil.getString(HiveUtil.filenameFormatKey,
            defaultValue: defaultFilenameFormat) ??
        defaultFilenameFormat;
    illust.originalName =
        illust.originalName.replaceAll(".${illust.extension}", "");
    String fileName = fileNameFormat
        .replaceAll(FilenameField.blogNickName.format, illust.blogNickName)
        .replaceAll(FilenameField.blogId.format, illust.blogId.toString())
        .replaceAll(FilenameField.blogLofterId.format, illust.blogLofterId)
        .replaceAll(FilenameField.originalName.format, illust.originalName)
        .replaceAll(FilenameField.part.format, illust.part.toString())
        .replaceAll(FilenameField.postId.format, illust.postId.toString())
        .replaceAll(FilenameField.timestamp.format,
            DateTime.now().millisecondsSinceEpoch.toString());
    return '$fileName.${illust.extension}';
  }

  static Future<bool> saveIllusts(
    BuildContext context,
    List<Illust> illusts, {
    bool showToast = true,
  }) async {
    try {
      List<bool> statusList = await Future.wait(illusts.map((e) async {
        return await saveIllust(context, e, showToast: false);
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

  static Future<bool> saveVideoByIllust(
    BuildContext context,
    Illust illust, {
    bool showToast = true,
    Function(int, int)? onReceiveProgress,
  }) async {
    return saveVideo(
      context,
      illust.url,
      fileName: getFileNameByIllust(illust),
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
      String savePath = appDocDir.path + FileUtil.getFileName(videoUrl);
      await Dio()
          .download(videoUrl, savePath, onReceiveProgress: onReceiveProgress);
      if (ResponsiveUtil.isMobile()) {
        var result = await ImageGallerySaver.saveFile(
          savePath,
          name: fileName ?? FileUtil.getFileName(videoUrl),
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
          String newPath =
              '$saveDirectory/${fileName ?? FileUtil.getFileName(videoUrl)}';
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
