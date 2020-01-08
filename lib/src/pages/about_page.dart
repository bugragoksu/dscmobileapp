import 'package:dscmobile/src/config/assets.dart';
import 'package:dscmobile/src/config/settings.dart';
import 'package:dscmobile/src/widgets/image_card.dart';
import 'package:dscmobile/src/widgets/tech_swiper.dart';
import 'package:dscmobile/src/widgets/text_card.dart';
import 'package:dscmobile/src/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dscmobile/src/tools/tools.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
 

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ImageCard(
              img: ThemeSwitcher.of(context).isDarkModeOn
                  ? Assets.diversity
                  : Assets.diversity,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              Settings.chapterName,
              style: Theme.of(context).textTheme.headline,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              Settings.chapterShortDesc,
              style: Theme.of(context).textTheme.caption,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              Settings.chapterTags,
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .apply(fontWeightDelta: 10),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                Settings.becomeAMemberText,
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              onPressed: () {
                Tools.launchURL(Settings.becomeAMemberLink,context);
              },
            ),
            SizedBox(height: 100),
            TextCard(
              text: Settings.connect,
              titleText: Settings.connectText,
              icon: FontAwesomeIcons.connectdevelop,
            ),
            SizedBox(
              height: 20,
            ),
            TextCard(
              text: Settings.learn,
              titleText: Settings.learnText,
              icon: FontAwesomeIcons.chalkboardTeacher,
            ),
            SizedBox(
              height: 20,
            ),
            TextCard(
              text: Settings.grow,
              titleText: Settings.growText,
              icon: FontAwesomeIcons.chartLine,
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              Settings.technologiesTitle,
              style: Theme.of(context).textTheme.headline,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            TechSwiper(),
          ],
        ),
      ),
    );
  }
}
