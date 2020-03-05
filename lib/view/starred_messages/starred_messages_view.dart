import 'package:dribbble_clone/core/theme/theme_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StarredMessagesView extends StatefulWidget {

  static const routeName = 'starred-messages-view';

  @override
  _StarredMessagesViewState createState() => _StarredMessagesViewState();
}

class _StarredMessagesViewState extends State<StarredMessagesView> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: 'Settings',
        middle: Text('Starred Messages'),
      ),
      child: Center(
        child: Text('Starred messages', style: ThemeTextStyle.robotoM.apply(color: Colors.black54),),
      )
    );
  }
}
