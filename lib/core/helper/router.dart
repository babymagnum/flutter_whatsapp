import 'package:dribbble_clone/view/camera/camera_view.dart';
import 'package:dribbble_clone/view/home/my_home_page.dart';
import 'package:dribbble_clone/view/starred_messages/starred_messages_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Router {
  static const String initialRoute = MyHomePage.routeName;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MyHomePage.routeName:
        return MaterialPageRoute(builder: (_) => MyHomePage());
      case CameraView.routeName:
        return MaterialPageRoute(builder: (_) => CameraView());
      case StarredMessagesView.routeName:
        return MaterialPageRoute(builder: (_) => StarredMessagesView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
