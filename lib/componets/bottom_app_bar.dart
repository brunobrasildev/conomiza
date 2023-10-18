import 'package:flutter/material.dart';

class BottomMenu extends StatefulWidget {
  const BottomMenu({
    this.fabLocation = FloatingActionButtonLocation.endDocked,
    this.shape = const CircularNotchedRectangle(),
  });

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape? shape;

  static final List<FloatingActionButtonLocation> centerLocations =
      <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  State<BottomMenu> createState() => _BottomAppBarState();
}

class _BottomAppBarState extends State<BottomMenu> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: widget.shape,
      color: const Color(0xFF101010),
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            const SizedBox(width: 50),
            IconButton(
              tooltip: 'Home',
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            const SizedBox(width: 50),
            IconButton(
              tooltip: 'Category',
              icon: const Icon(Icons.category),
              onPressed: () {},
            ),
            const SizedBox(width: 50),
            IconButton(
              tooltip: 'Setting',
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
