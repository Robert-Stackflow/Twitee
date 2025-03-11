/*
 * Copyright (c) 2025 Robert-Stackflow.
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

class ViewConfig {
  bool containReplies;
  bool containRetweets;
  bool onlyShowMedia;

  ViewConfig({
    this.containReplies = true,
    this.containRetweets = true,
    this.onlyShowMedia = false,
  });

  factory ViewConfig.fromJson(Map<String, dynamic> json) {
    return ViewConfig(
      containReplies: json['containReplies'] ?? true,
      containRetweets: json['containRetweets'] ?? true,
      onlyShowMedia: json['onlyShowMedia'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['containReplies'] = containReplies;
    data['containRetweets'] = containRetweets;
    data['onlyShowMedia'] = onlyShowMedia;
    return data;
  }

  @override
  String toString() {
    return 'ViewConfig{containReplies: $containReplies, containRetweets: $containRetweets, onlyShowMedia: $onlyShowMedia}';
  }

  bool get filtered =>
      containReplies != true ||
      containRetweets != true ||
      onlyShowMedia != false;
}
