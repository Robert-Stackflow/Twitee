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

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:twitee/Models/view_config.dart';

import '../../Openapi/models/topic_context.dart';

mixin RefreshMixin {
  FutureOr refresh();

  FutureOr scrollToTop();

  ScrollController? getScrollController();
}

mixin ViewConfigMixin {
  FutureOr refreshViewConfig(ViewConfig viewConfig);
}

mixin BottomNavgationMixin {
  FutureOr onTapBottomNavigation();
}

mixin OnSelectTopicMixin {
  FutureOr onSelectTopic(CommunityTopic topic);
}

mixin ScrollToHideMixin {
  List<ScrollController> getScrollControllers();
}

abstract class StatefulWidgetForFlow extends StatefulWidget {
  final double triggerOffset;
  final bool nested;
  final ScrollController? scrollController;

  const StatefulWidgetForFlow({
    super.key,
    this.scrollController,
    this.triggerOffset = 0,
    this.nested = false,
  });

  @override
  State<StatefulWidget> createState();
}
