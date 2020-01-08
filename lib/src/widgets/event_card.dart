import 'package:cached_network_image/cached_network_image.dart';
import 'package:dscmobile/src/models/event_model.dart';
import 'package:dscmobile/src/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:dscmobile/src/tools/tools.dart';

class EventCard extends StatelessWidget {
  final Event event;

  const EventCard({Key key, this.event}) : super(key: key);

  Widget bottomIcons(context) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(
              FontAwesomeIcons.clock,
              size: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              event.eventDate,
              style: Theme.of(context).textTheme.caption.apply(fontSizeDelta: 6),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              FontAwesomeIcons.mapMarkerAlt,
              size: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              event.eventVenue,
              style: Theme.of(context).textTheme.caption.apply(fontSizeDelta: 6),
              textAlign: TextAlign.center,
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.globe,
                size: 20,
              ),
              onPressed: () {
                Tools.launchURL(event.registrationLink, context);
              },
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      color: ThemeSwitcher.of(context).isDarkModeOn
          ? Color(0xff1f2124)
          : Colors.white,
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 250,
              child: CachedNetworkImage(
                imageUrl: event.eventImage,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              event.eventName,
              style: Theme.of(context).textTheme.headline,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Text(
                event.eventDescription,
                style:
                    Theme.of(context).textTheme.caption.apply(fontSizeDelta: 5),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            bottomIcons(context),
          ],
        ),
      ),
    );
  }
}
