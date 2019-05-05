import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';


class BubblyBar extends StatefulWidget {
  @override
  createState() => _BubblyBarState();
}

class _BubblyBarState extends State<BubblyBar> {

  int _currentIndex = 2;


    Widget build(BuildContext context) {
      return BubbleBottomBar(
                  opacity: 0.2,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20),),
                  elevation: 5.0,
                  // fabLocation: BubbleBottomBarFabLocation.end, //new
                  hasNotch: false, //new
                  items: <BubbleBottomBarItem>[
                      BubbleBottomBarItem(backgroundColor: Colors.orange[400], icon: Icon(Icons.dashboard, color: Colors.grey[700],), activeIcon: Icon(Icons.dashboard, color: Colors.orange[400],), title: Text("Home")),
                      BubbleBottomBarItem(backgroundColor: Colors.deepPurple, icon: Icon(Icons.access_time, color: Colors.grey[700],), activeIcon: Icon(Icons.access_time, color: Colors.deepPurple,), title: Text("Logs")),
                      BubbleBottomBarItem(backgroundColor: Colors.indigo, icon: Icon(Icons.folder_open, color: Colors.grey[700],), activeIcon: Icon(Icons.folder_open, color: Colors.indigo,), title: Text("Folders")),
                      BubbleBottomBarItem(backgroundColor: Colors.green, icon: Icon(Icons.menu, color: Colors.grey[700],), activeIcon: Icon(Icons.menu, color: Colors.green,), title: Text("Menu"))
                  ],
                  currentIndex: _currentIndex,
                  onTap: (index) {
                      setState(() {
                        _currentIndex = index;
                  });
             }, 
        );
    }
}