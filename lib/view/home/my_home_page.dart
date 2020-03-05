import 'package:dribbble_clone/view/calls/calls_view.dart';
import 'package:dribbble_clone/view/camera/camera_view.dart';
import 'package:dribbble_clone/view/chats/chats_view.dart';
import 'package:dribbble_clone/view/settings/settings_view.dart';
import 'package:dribbble_clone/view/status/status_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/theme/theme_color.dart';
import '../../core/theme/theme_text_style.dart';

class MyHomePage extends StatefulWidget {

  static const routeName = 'my-home-page';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  bool _hasChat = false, _hasStatus = false, _hasCalls = false;

  _onItemTapped(int index) {
    if (index == 2) Navigator.of(context).pushNamed(CameraView.routeName);
    else setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        onTap: (index) {
          if (index == 2) Navigator.of(context).pushNamed(CameraView.routeName);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.data_usage, size: 20),
            title: Text('Status', style: ThemeTextStyle.robotoR.apply(
              fontSizeDelta: -2
            )),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call, size: 20),
            title: Text('Calls', style: ThemeTextStyle.robotoR.apply(
              fontSizeDelta: -2
            )),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt, size: 20),
            title: Text('Camera', style: ThemeTextStyle.robotoR.apply(
              fontSizeDelta: -2
            )),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, size: 20),
            title: Text('Chats', style: ThemeTextStyle.robotoR.apply(
              fontSizeDelta: -2
            )),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings, size: 20),
            title: Text('Settings', style: ThemeTextStyle.robotoR.apply(
              fontSizeDelta: -2
            )),
          ),
        ]
      ),
      tabBuilder: (context, index) {
        if (index == 0) return StatusView();
        else if (index == 1) return CallsView();
        else if (index == 2) return CameraView();
        else if (index == 3) return ChatsView();
        else return SettingsView();
      }
    );
  }

  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.bg_screen,
      body: IndexedStack(
        index: _selectedIndex,
        children: <Widget>[
          StatusView(),
          CallsView(),
          CameraView(),
          ChatsView(),
          SettingsView()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ThemeColor.bg_screen,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.data_usage, size: 20, color: _selectedIndex == 0 ? Colors.lightBlueAccent : Colors.black26,),
            title: Text('Status', style: ThemeTextStyle.robotoR.apply(
              color: _selectedIndex == 0 ? Colors.lightBlueAccent : Colors.black26, fontSizeDelta: -2
            )),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call, size: 20, color: _selectedIndex == 1 ? Colors.lightBlueAccent : Colors.black26,),
            title: Text('Calls', style: ThemeTextStyle.robotoR.apply(
              color: _selectedIndex == 1 ? Colors.lightBlueAccent : Colors.black26, fontSizeDelta: -2
            )),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt, size: 20, color: _selectedIndex == 2 ? Colors.lightBlueAccent : Colors.black26,),
            title: Text('Camera', style: ThemeTextStyle.robotoR.apply(
              color: _selectedIndex == 2 ? Colors.lightBlueAccent : Colors.black26, fontSizeDelta: -2
            )),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, size: 20, color: _selectedIndex == 3 ? Colors.lightBlueAccent : Colors.black26,),
            title: Text('Chats', style: ThemeTextStyle.robotoR.apply(
              color: _selectedIndex == 3 ? Colors.lightBlueAccent : Colors.black26, fontSizeDelta: -2
            )),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings, size: 20, color: _selectedIndex == 4 ? Colors.lightBlueAccent : Colors.black26,),
            title: Text('Settings', style: ThemeTextStyle.robotoR.apply(
              color: _selectedIndex == 4 ? Colors.lightBlueAccent : Colors.black26, fontSizeDelta: -2
            )),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlueAccent,
        onTap: _onItemTapped,
      ),
    );
  }*/
}