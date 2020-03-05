import 'package:division/division.dart';
import 'package:dribbble_clone/core/theme/theme_text_style.dart';
import 'package:dribbble_clone/model/settings_menu.dart';
import 'package:dribbble_clone/view/camera/camera_view.dart';
import 'package:dribbble_clone/view/starred_messages/starred_messages_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {

  static const routeName = 'settings-view';
  List<SettingsMenu> listMenu = [
    SettingsMenu('', 'Starred Messages'),
    SettingsMenu('', 'WhatsApp Web/Desktop'),
    SettingsMenu('', 'Account'),
    SettingsMenu('', 'Chats'),
    SettingsMenu('', 'Notifications'),
    SettingsMenu('', 'Data and Storage Usage'),
    SettingsMenu('', 'Help'),
    SettingsMenu('', 'Tell a Friend'),
    SettingsMenu('', 'Tell a Friend'),
    SettingsMenu('', 'Tell a Friend'),
    SettingsMenu('', 'Tell a Friend'),
    SettingsMenu('', 'Tell a Friend'),
    SettingsMenu('', 'Tell a Friend'),
    SettingsMenu('', 'Tell a Friend'),
    SettingsMenu('', 'Tell a Friend'),
    SettingsMenu('', 'Tell a Friend'),
    SettingsMenu('', 'Tell a Friend'),
    SettingsMenu('', 'Tell a Friend'),
    SettingsMenu('', 'Tell a Friend'),
    SettingsMenu('', 'Tell a Friend'),
    SettingsMenu('', 'Tell a Friend'),
    SettingsMenu('', 'Tell a Friend'),
    SettingsMenu('', 'Tell a Friend'),
    SettingsMenu('', 'Tell a Friend'),
    SettingsMenu('', 'Tell a Friend'),
  ];

  _onTap(int index, context) {
    if (index == 0) Navigator.of(context).push(CupertinoPageRoute(builder: (_) => StarredMessagesView()));
    else Navigator.of(context).pushNamed(CameraView.routeName);
  }
  
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.black12.withAlpha(15),
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: Colors.black12.withAlpha(0),
            largeTitle: Text('Settings'),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) => Parent(
              gesture: Gestures()..onTap(() => _onTap(index, context)),
              style: ParentStyle()..ripple(true)..padding(horizontal: 15, top: index == 0 ? 10 : 5, bottom: index == listMenu.length - 1 ? 10 : 5),
              child: Text(
                listMenu[index].menu, style: ThemeTextStyle.robotoM.apply(color: Colors.black54),
              ),
            ),
              childCount: listMenu.length
            ),
          )
        ],
      ),
    );
  }

}
