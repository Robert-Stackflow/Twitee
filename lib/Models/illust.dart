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

class Illust {
  String originalName;
  int blogId;
  String blogLofterId;
  String blogNickName;
  int part;
  int postId;
  String url;
  String extension;

  Illust({
    required this.extension,
    required this.url,
    required this.postId,
    required this.originalName,
    required this.blogId,
    required this.blogLofterId,
    required this.blogNickName,
    required this.part,
  });

  @override
  String toString() {
    return 'Illust{originalName: $originalName, blogId: $blogId, blogLofterId: $blogLofterId, blogNickName: $blogNickName, part: $part, postId: $postId, url: $url, extension: $extension}';
  }
}
