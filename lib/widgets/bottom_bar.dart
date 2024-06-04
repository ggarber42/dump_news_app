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
        print('wwwww');
        break;
      case 1:
        print('kkkk');
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
          icon: Icon(Icons.question_mark),
          label: 'Dunno',
        ),
      ],
      currentIndex: widget.currentIndex,
      onTap: _updateIndex,
    );
  }
}
