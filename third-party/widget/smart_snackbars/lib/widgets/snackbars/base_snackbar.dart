import 'package:flutter/material.dart';
import 'package:smart_snackbars/enums/animate_from.dart';

class CustomSnackBarController {
  Function()? close;
}

/// An abstract widget to create a smart snackbar.
// ignore: must_be_immutable
class CustomSnackBar extends StatefulWidget {
  CustomSnackBar({
    super.key,
    required this.child,
    required this.duration,
    required this.animationCurve,
    required this.animateFrom,
    required this.persist,
    required this.onDismissed,
    required this.outerPadding,
    this.distanceToTravelFromStartToEnd,
    this.controller,
    this.maxWidth,
    this.alignment,
  });

  Widget child;
  Duration duration;
  Curve animationCurve;
  AnimateFrom animateFrom;
  bool persist;
  VoidCallback onDismissed;
  EdgeInsetsGeometry outerPadding;

  double? distanceToTravelFromStartToEnd;

  CustomSnackBarController? controller;

  double? maxWidth;

  Alignment? alignment;

  @override
  State<CustomSnackBar> createState() => CustomSnackBarState();
}

class CustomSnackBarState extends State<CustomSnackBar> {
  double? top = -150;
  double? bottom = -150;
  int startTimestamp = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 0), () {
      if (mounted) {
        setState(() {
          if (widget.animateFrom == AnimateFrom.fromBottom) {
            bottom = widget.distanceToTravelFromStartToEnd;
          } else if (widget.animateFrom == AnimateFrom.fromTop) {
            top = widget.distanceToTravelFromStartToEnd;
          }
        });
      }
    });
    startTimestamp = DateTime.now().millisecondsSinceEpoch;
    widget.controller?.close = close;
  }

  @override
  void dispose() {
    super.dispose();
  }

  close() async {
    var endTimestamp = DateTime.now().millisecondsSinceEpoch;
    var diff = endTimestamp - startTimestamp;
    if (diff < widget.duration.inMilliseconds) {
      var wait = widget.duration.inMilliseconds - diff;
      await Future.delayed(Duration(milliseconds: wait), () => () {});
      _close();
    } else {
      _close();
    }
  }

  _close() {
    setState(
      () {
        if (widget.animateFrom == AnimateFrom.fromBottom) {
          bottom = -150;
        } else if (widget.animateFrom == AnimateFrom.fromTop) {
          top = -150.0;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      right: widget.alignment == (Alignment.centerRight) ? 0 : null,
      left: widget.alignment == Alignment.centerLeft ? 0 : null,
      bottom: widget.animateFrom == AnimateFrom.fromBottom ? bottom : null,
      top: widget.animateFrom == AnimateFrom.fromTop ? top : null,
      curve: widget.animationCurve,
      onEnd: widget.persist
          ? () {}
          : () {
              Future.delayed(
                const Duration(milliseconds: 500),
                () => close,
              );
            },
      duration: widget.duration,
      child: SafeArea(
        bottom: false,
        child: Dismissible(
          key: UniqueKey(),
          direction: widget.persist
              ? DismissDirection.horizontal
              : DismissDirection.none,
          onDismissed: (direction) {
            if (widget.persist) {
              widget.onDismissed.call();
            }
          },
          child: Container(
            padding: widget.outerPadding,
            constraints: BoxConstraints(
                maxWidth: widget.maxWidth ?? MediaQuery.of(context).size.width),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
