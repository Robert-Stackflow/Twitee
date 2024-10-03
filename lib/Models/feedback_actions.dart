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

import 'dart:convert';

class FeedbackActions {
  String? key;
  FeedbackActionValue? value;

  FeedbackActions({this.key, this.value});

  factory FeedbackActions.fromJson(Map<String, dynamic> json) {
    return FeedbackActions(
      key: json['key'],
      value: json['value'] != null
          ? FeedbackActionValue.fromJson(json['value'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['key'] = key;
    if (value != null) {
      data['value'] = value!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return jsonEncode(toJson());
  }

  @override
  bool operator ==(Object other) {
    return other is FeedbackActions && other.key == key;
  }

  @override
  int get hashCode => key.hashCode;
}

class FeedbackActionValue {
  String? feedbackType;
  String? prompt;
  String? confirmation;
  List<String>? childKeys;
  String? feedbackUrl;
  bool? hasUndoAction;
  String? icon;
  FeedbackActionClientEventInfo? clientEventInfo;

  FeedbackActionValue(
      {this.feedbackType,
      this.prompt,
      this.confirmation,
      this.childKeys,
      this.feedbackUrl,
      this.hasUndoAction,
      this.icon,
      this.clientEventInfo});

  factory FeedbackActionValue.fromJson(Map<String, dynamic> json) {
    return FeedbackActionValue(
      feedbackType: json['feedbackType'],
      prompt: json['prompt'],
      confirmation: json['confirmation'],
      childKeys: json['childKeys'] != null
          ? List<String>.from(json['childKeys'])
          : null,
      feedbackUrl: json['feedbackUrl'],
      hasUndoAction: json['hasUndoAction'],
      icon: json['icon'],
      clientEventInfo: json['clientEventInfo'] != null
          ? FeedbackActionClientEventInfo.fromJson(json['clientEventInfo'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['feedbackType'] = feedbackType;
    data['prompt'] = prompt;
    data['confirmation'] = confirmation;
    data['childKeys'] = childKeys;
    data['feedbackUrl'] = feedbackUrl;
    data['hasUndoAction'] = hasUndoAction;
    data['icon'] = icon;
    if (clientEventInfo != null) {
      data['clientEventInfo'] = clientEventInfo!.toJson();
    }
    return data;
  }
}

class FeedbackActionClientEventInfo {
  String? action;
  String? element;

  FeedbackActionClientEventInfo({this.action, this.element});

  factory FeedbackActionClientEventInfo.fromJson(Map<String, dynamic> json) {
    return FeedbackActionClientEventInfo(
      action: json['action'],
      element: json['element'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['action'] = action;
    data['element'] = element;
    return data;
  }
}
