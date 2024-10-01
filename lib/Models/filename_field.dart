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

enum FilenameField {
  originalName('original_name', '{original_name}', '图片原文件名称'),
  postId('post_id', '{post_id}', '帖子ID'),
  timestamp('timestamp', '{timestamp}', '时间戳'),
  blogId('blog_id', '{blog_id}', '作者ID'),
  blogLofterId('blog_lofter_id', '{blog_lofter_id}', '作者Lofter ID'),
  blogNickName('blog_nick_name', '{blog_nick_name}', '作者昵称'),
  part('part', '{part}', '图片序号'),
  underline('_', '_', '下划线');

  const FilenameField(this.label, this.format, this.description);

  final String format;
  final String label;
  final String description;
}
