import 'package:dscmobile/src/models/user_model.dart';
import 'package:dscmobile/src/tools/tools.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({Key key, this.user}) : super(key: key);

  Widget socialActions(context) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                FontAwesomeIcons.twitter,
                size: 20,
              ),
              onPressed: () {
               Tools.launchURL(user.twitterUrl,context);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.linkedinIn,
                size: 20,
              ),
              onPressed: () {
                Tools.launchURL(user.linkedinUrl,context);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.github,
                size: 20,
              ),
              onPressed: () {
                Tools.launchURL(user.githubUrl,context);
              },
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                child: CachedNetworkImage(
                  imageUrl: user.imageUrl,
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          user.name,
                          style: Theme.of(context).textTheme.title,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      user.designation,
                      style: Theme.of(context).textTheme.subtitle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    socialActions(context),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
