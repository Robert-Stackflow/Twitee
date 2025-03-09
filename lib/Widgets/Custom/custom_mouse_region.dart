import 'package:flutter/cupertino.dart';
import 'package:flutter_context_menu/flutter_context_menu.dart';
import 'package:twitee/Utils/app_provider.dart';

class CustomMouseRegion extends StatefulWidget {
  final Widget child;

  const CustomMouseRegion({
    super.key,
    required this.child,
  });

  @override
  CustomMouseRegionState createState() => CustomMouseRegionState();
}

class CustomMouseRegionState extends State<CustomMouseRegion> {
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (event) {
        appProvider.mousePosition = event.position;
      },
      child: GenericContextMenuOverlay(child: widget.child),
    );
  }
}
