import 'package:flutter/material.dart';

import '../screens/add_source.dart';

class TopBar extends StatelessWidget with PreferredSizeWidget {
  final String windowTitle;
  final bool hasAddSourceAction;
  const TopBar({
    super.key,
    this.windowTitle = 'Dump News',
    this.hasAddSourceAction = true,
  });

  goToAddSourceScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddSourceScreen()),
    );
  }

  List<Widget>? _actions(BuildContext context) {
    var actions = <Widget>[];
    if (hasAddSourceAction) {
      actions.add(IconButton(
          onPressed: () => goToAddSourceScreen(context),
          icon: const Icon(Icons.add_circle)));
    }
    return actions;
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(windowTitle),
      actions: _actions(context),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
