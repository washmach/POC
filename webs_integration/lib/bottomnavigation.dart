import 'package:flutter/material.dart';
import 'package:webs_integration/webfacebook_page.dart';
import 'package:webs_integration/webyoutube_page.dart';

class BottonNavigationBar extends StatefulWidget {
  BottonNavigationBar({
    required this.positionbar,
  }) : super();

  final int positionbar;
  @override
  _BottonNavigationBarState createState() => _BottonNavigationBarState();
}

class _BottonNavigationBarState extends State<BottonNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: (widget.positionbar == null) ? 0 : widget.positionbar,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.grey[600],
      iconSize: 30,
      selectedItemColor: Colors.orange[600],
      selectedFontSize: 0.0,
      unselectedFontSize: 0.0,
      items: [
        BottomNavigationBarItem(
          icon: GestureDetector(
            child: Icon(Icons.person),
            onTap: () {
              Navigator.of(context).push<MaterialPageRoute>(
                MaterialPageRoute(
                  builder: (context) => WebFabookPage(),
                ),
              );
            },
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            child: Icon(Icons.play_circle_fill),
            onTap: () {
              Navigator.of(context).push<MaterialPageRoute>(
                MaterialPageRoute(
                  builder: (context) => WebYoutubePage(),
                ),
              );
            },
          ),
          label: '',
        ),
      ],
      onTap: (index) {},
    );
  }
}
