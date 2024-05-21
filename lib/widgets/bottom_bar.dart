import 'package:dump_news_app/screens/add_feed.dart';
import 'package:dump_news_app/screens/home.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final int currentIndex;
  const BottomBar({super.key, this.currentIndex = 0});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  void _updateIndex(int newIndex) {
    switch (newIndex) {
      case 0:
        Navigator.of(context)
            .pushReplacementNamed(HomeScreen.routeName);
        break;
      case 1:
        Navigator.of(context).pushReplacementNamed(AddFeedScreeen.routeName);
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle),
          label: 'Add feed',
        ),
      ],
      currentIndex: widget.currentIndex,
      onTap: _updateIndex,
    );
  }
}
