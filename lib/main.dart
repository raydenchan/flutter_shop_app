import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'pages/intro.dart' as page;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: AppScrollBehavior(),
      title: "Flutter Shop App",
      home: page.IntroPage(),
    );
  }
}

/*
The AppScrollBehavior class serves a specific and important purpose - it enables cross-platform scrolling interactions for your Flutter app. By extending MaterialScrollBehavior and overriding the dragDevices property, it explicitly allows both touch and mouse-based scrolling gestures. This is particularly valuable for PageViews and other scrollable widgets when running on desktop or web platforms where mouse interactions are common.
*/
class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
