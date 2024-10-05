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

class SearchTimelineTabItem {
  String? id;
  String? labelText;
  ScribeConfig? scribeConfig;
  int? refreshIntervalSec;
  SearchTimelineTabItemTimeline? timeline;

  SearchTimelineTabItem({
    this.id,
    this.labelText,
    this.scribeConfig,
    this.refreshIntervalSec,
    this.timeline,
  });

  factory SearchTimelineTabItem.fromMap(Map<String, dynamic> map) {
    return SearchTimelineTabItem(
      id: map['id'],
      labelText: map['labelText'],
      scribeConfig: ScribeConfig.fromMap(map['scribeConfig']),
      refreshIntervalSec: map['refreshIntervalSec'],
      timeline: SearchTimelineTabItemTimeline.fromMap(map['timeline']),
    );
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['labelText'] = labelText;
    if (scribeConfig != null) {
      data['scribeConfig'] = scribeConfig!.toMap();
    }
    data['refreshIntervalSec'] = refreshIntervalSec;
    if (timeline != null) {
      data['timeline'] = timeline!.toMap();
    }
    return data;
  }
}

class ScribeConfig {
  String? page;
  String? section;

  ScribeConfig({this.page, this.section});

  factory ScribeConfig.fromMap(Map<String, dynamic> map) {
    return ScribeConfig(
      page: map['page'],
      section: map['section'],
    );
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['page'] = page;
    data['section'] = section;
    return data;
  }
}

class SearchTimelineTabItemTimeline {
  String? id;

  SearchTimelineTabItemTimeline({this.id});

  factory SearchTimelineTabItemTimeline.fromMap(Map<String, dynamic> map) {
    return SearchTimelineTabItemTimeline(
      id: map['id'],
    );
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    return data;
  }
}
