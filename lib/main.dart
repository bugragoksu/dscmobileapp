import 'package:dscmobile/src/config/themes.dart';
import 'package:dscmobile/src/pages/home_page.dart';
import 'package:dscmobile/src/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  //* Forcing only portrait orientation
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: DSCMobile(),
    );
  }
}

class DSCMobile extends StatefulWidget {
  DSCMobile({Key key}) : super(key: key);

  @override
  _DSCMobileState createState() => _DSCMobileState();
}

class _DSCMobileState extends State<DSCMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeSwitcher.of(context).isDarkModeOn
          ? darkTheme(context)
          : lightTheme(context),
    );
  }
}
