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

import 'package:flutter/cupertino.dart';

/// A scroll controller subordinate to a parent controller, which
/// [createScrollPosition]s via the parent and attaches/detaches its positions
/// from the parent. This is useful for creating nested scroll controllers
/// for widgets with scrollbars that can actuate a parent scroll controller.
class SubordinateScrollController extends ScrollController {
  SubordinateScrollController(
    this.parent, {
    String subordinateDebugLabel = 'subordinate',
  }) : super(
          debugLabel: parent.debugLabel == null
              ? null
              : '${parent.debugLabel}/$subordinateDebugLabel',
          initialScrollOffset: parent.initialScrollOffset,
          keepScrollOffset: parent.keepScrollOffset,
        );
  final ScrollController parent;

  // Although some use cases might seem to be simplified if parent were made
  // settable, we can't really do this because scroll positions are owned by
  // Scrollables rather than the scroll controller, so the scroll view is
  // responsible for transferring positions from one controller to another. If
  // we were to try to do the transfer here, we would end up trying to dispose
  // of positions that Scrollables may still be holding on to.

  @override
  ScrollPosition createScrollPosition(
    ScrollPhysics physics,
    ScrollContext context,
    ScrollPosition? oldPosition,
  ) =>
      parent.createScrollPosition(physics, context, oldPosition);

  @override
  void attach(ScrollPosition position) {
    super.attach(position);
    parent.attach(position);
  }

  @override
  void detach(ScrollPosition position) {
    parent.detach(position);
    super.detach(position);
  }

  @override
  void dispose() {
    for (final position in positions) {
      parent.detach(position);
    }

    super.dispose();
  }
}
