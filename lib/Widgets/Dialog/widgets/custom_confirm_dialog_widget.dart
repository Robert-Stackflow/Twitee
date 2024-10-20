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

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';

import '../../../Utils/utils.dart';
import '../../Item/custom_html_widget.dart';
import '../colors.dart';
import '../custom_dialog.dart';

class CustomConfirmDialogWidget extends StatelessWidget {
  final String? title;
  final String message;
  final String? imagePath;
  final String confirmButtonText;
  final String cancelButtonText;
  final VoidCallback onTapConfirm;
  final VoidCallback onTapCancel;
  final CustomDialogType customDialogType;
  final Color? color;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? buttonTextColor;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double borderRadius;
  final TextAlign? messageTextAlign;

  final bool renderHtml;

  final Alignment align;

  const CustomConfirmDialogWidget({
    super.key,
    this.title,
    required this.message,
    required this.confirmButtonText,
    required this.cancelButtonText,
    required this.onTapConfirm,
    required this.onTapCancel,
    required this.customDialogType,
    this.color,
    this.backgroundColor,
    this.textColor = const Color(0xFF707070),
    this.buttonTextColor = Colors.white,
    this.imagePath,
    this.padding = const EdgeInsets.all(24),
    this.margin = const EdgeInsets.all(24),
    required this.renderHtml,
    this.borderRadius = 24,
    this.align = Alignment.bottomCenter,
    this.messageTextAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    double preferWidth = MediaQuery.sizeOf(context).width - 20 * 2;
    return Align(
      alignment: align,
      child: Material(
        color: Colors.transparent,
        child: Container(
          constraints: BoxConstraints(maxWidth: min(380, preferWidth)),
          margin: margin ?? const EdgeInsets.all(20),
          padding: padding ??
              const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          decoration: BoxDecoration(
            color: backgroundColor ?? theme.canvasColor,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (Utils.isNotEmpty(title))
                Text(
                  title!,
                  style: TextStyle(
                    fontSize: 19,
                    height: 1.2,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              if (Utils.isNotEmpty(title)) const SizedBox(height: 20),
              renderHtml
                  ? CustomHtmlWidget(
                      content: message,
                      style: TextStyle(
                        color: textColor ??
                            Theme.of(context).textTheme.bodySmall?.color,
                        height: 1.5,
                        fontSize: 15,
                      ),
                    )
                  : Text(
                      message,
                      style: TextStyle(
                        color: textColor ??
                            Theme.of(context).textTheme.bodySmall?.color,
                        height: 1.5,
                        fontSize: 15,
                      ),
                      textAlign: messageTextAlign,
                    ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: ItemBuilder.buildRoundButton(
                      context,
                      fontSizeDelta: 2,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 12),
                      onTap: () {
                        onTapCancel.call();
                        Navigator.pop(context);
                      },
                      text: cancelButtonText,
                    ),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    flex: 1,
                    child: ItemBuilder.buildRoundButton(
                      context,
                      color: buttonTextColor ?? Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 12),
                      fontSizeDelta: 2,
                      onTap: () {
                        Navigator.pop(context);
                        onTapConfirm.call();
                      },
                      text: confirmButtonText,
                      background: CustomDialogColors.getBgColor(
                        context,
                        customDialogType,
                        color ?? Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
