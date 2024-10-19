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

import 'package:twitee/Openapi/export.dart';

class TimelineTopic extends ItemContentUnion {
  String itemType;
  String sTypename;
  Topic topic;
  String topicFunctionalityType;
  String topicDisplayType;

  TimelineTopic({
    required this.itemType,
    required this.sTypename,
    required this.topic,
    required this.topicFunctionalityType,
    required this.topicDisplayType,
  });

  factory TimelineTopic.fromJson(Map<String, dynamic> json) {
    return TimelineTopic(
      itemType: json['itemType'],
      sTypename: json['__typename'],
      topic: Topic.fromJson(json['topic']),
      topicFunctionalityType: json['topicFunctionalityType'],
      topicDisplayType: json['topicDisplayType'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'itemType': itemType,
      '__typename': sTypename,
      'topic': topic.toJson(),
      'topicFunctionalityType': topicFunctionalityType,
      'topicDisplayType': topicDisplayType,
    };
  }
}

class Topic {
  bool following;
  String iconUrl;
  String id;
  String topicId;
  String name;
  String? description;
  bool notInterested;

  Topic({
    required this.following,
    required this.iconUrl,
    required this.id,
    required this.topicId,
    required this.name,
    required this.notInterested,
    this.description,
  });

  factory Topic.fromJson(Map<String, dynamic> json) {
    return Topic(
      following: json['following'],
      iconUrl: json['icon_url'],
      id: json['id'],
      topicId: json['topic_id'],
      name: json['name'],
      notInterested: json['not_interested'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'following': following,
      'icon_url': iconUrl,
      'id': id,
      'topic_id': topicId,
      'name': name,
      'not_interested': notInterested,
      'description': description,
    };
  }
}
