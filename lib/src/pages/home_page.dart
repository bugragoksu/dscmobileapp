import 'package:dscmobile/src/config/assets.dart';
import 'package:dscmobile/src/config/settings.dart';
import 'package:dscmobile/src/pages/about_page.dart';
import 'package:dscmobile/src/pages/contact_page.dart';
import 'package:dscmobile/src/pages/events_page.dart';
import 'package:dscmobile/src/pages/team_page.dart';
import 'package:dscmobile/src/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  PageController _pageController;
  static List<Widget> tabWidgets = [
    AboutPage(),
    EventsPage(),
    TeamPage(),
    ContactPage()
  ];
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      color: ThemeSwitcher.of(context).isDarkModeOn
          ? Colors.grey[800]
          : Colors.white,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: appBar(context),
          bottomNavigationBar: bottomNavyBar(context),
          body: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: tabWidgets),
        ),
      ),
    );
  }

  Widget appBar(context) => AppBar(
        title: Text(Settings.chapterName),
        centerTitle: Settings.chapterName.length >= 25 ? false : true,
        actions: <Widget>[
          IconButton(
            icon: ThemeSwitcher.of(context).isDarkModeOn
                ? Icon(
                    FontAwesomeIcons.lightbulb,
                    size: 18,
                  )
                : Icon(
                    FontAwesomeIcons.solidLightbulb,
                    size: 18,
                  ),
            onPressed: () => ThemeSwitcher.of(context).switchDarkMode(),
          )
        ],
      );

  Widget bottomNavyBar(context) => BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.ease);
        }),
        items: [
          BottomNavyBarItem(
              icon: Icon(Icons.home, color: Theme.of(context).accentColor),
              title: Text(Settings.homeText,
                  style: TextStyle(color: Theme.of(context).accentColor)),
              activeColor: Colors.blue),
          BottomNavyBarItem(
              icon: Icon(Icons.event, color: Theme.of(context).accentColor),
              title: Text(Settings.eventText,
                  style: TextStyle(color: Theme.of(context).accentColor)),
              activeColor: Colors.red),
          BottomNavyBarItem(
              icon: Icon(Icons.group, color: Theme.of(context).accentColor),
              title: Text(Settings.teamText,
                  style: TextStyle(color: Theme.of(context).accentColor)),
              activeColor: Colors.yellow),
          BottomNavyBarItem(
              icon: Icon(Icons.feedback, color: Theme.of(context).accentColor),
              title: Text(
                Settings.contactText,
                style: TextStyle(color: Theme.of(context).accentColor),
              ),
              activeColor: Colors.green),
        ],
      );

//   Widget bottomNavBar(context) => BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: (index) => setState(() => _selectedIndex = index),
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//               icon: Icon(Icons.home, color: Theme.of(context).accentColor),
//               title: Text(Settings.homeText,
//                   style: TextStyle(color: Theme.of(context).accentColor))),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.event, color: Theme.of(context).accentColor),
//               title: Text(Settings.eventText,
//                   style: TextStyle(color: Theme.of(context).accentColor))),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.group, color: Theme.of(context).accentColor),
//               title: Text(Settings.teamText,
//                   style: TextStyle(color: Theme.of(context).accentColor))),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.feedback, color: Theme.of(context).accentColor),
//               title: Text(
//                 Settings.contactText,
//                 style: TextStyle(color: Theme.of(context).accentColor),
//               )),
//         ],
//       );
}
