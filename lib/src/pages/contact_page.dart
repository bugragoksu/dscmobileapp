import 'package:dscmobile/src/config/assets.dart';
import 'package:dscmobile/src/config/settings.dart';
import 'package:dscmobile/src/tools/tools.dart';
import 'package:dscmobile/src/widgets/image_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactPage extends StatefulWidget {
  ContactPage({Key key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  Widget socialActions(context) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                FontAwesomeIcons.facebook,
                size: 20,
              ),
              onPressed: () {
                Tools.launchURL(Settings.facebookUrl, context);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.instagram,
                size: 20,
              ),
              onPressed: () {
                Tools.launchURL(Settings.instagramUrl, context);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.twitter,
                size: 20,
              ),
              onPressed: () {
                Tools.launchURL(Settings.twitterUrl, context);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.linkedinIn,
                size: 20,
              ),
              onPressed: () {
                Tools.launchURL(Settings.linkedinUrl, context);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.github,
                size: 20,
              ),
              onPressed: () {
                Tools.launchURL(Settings.githubUrl, context);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.envelope,
                size: 20,
              ),
              onPressed: () {
                Tools.launchURL(
                    "mailto:${Settings.chapterEmail}?subject=[DSC Mobile App]",
                    context);
              },
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(12),
      child: Column(
        children: <Widget>[
          Text(
            Settings.contactPageTitle,
            style: Theme.of(context).textTheme.headline,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            Settings.contactPageSubTitle,
            style: Theme.of(context).textTheme.caption,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            child: Container(
                height: 350,
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  Assets.contact,
                  fit: BoxFit.fill,
                )),
          ),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Column(
              children: <Widget>[socialActions(context)],
            ),
          ),
        ],
      ),
    );
  }
}
