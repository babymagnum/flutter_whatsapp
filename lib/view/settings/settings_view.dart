import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {

  static const routeName = 'settings-view';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text('Tes cupertino on android'),
      ),
      navigationBar: CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.settings),
      ),
    );
  }
}
