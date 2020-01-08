import 'package:dscmobile/src/config/settings.dart';
import 'package:dscmobile/src/data/events.dart';
import 'package:dscmobile/src/widgets/event_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class EventsPage extends StatefulWidget {
  EventsPage({Key key}) : super(key: key);

  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              Settings.eventsPageTitle,
              style: Theme.of(context).textTheme.subtitle,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              Settings.eventsPageSubtitle,
              style: Theme.of(context).textTheme.caption,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 500,
              child: Swiper(
                control:
                    new SwiperControl(color: Theme.of(context).accentColor),
                itemCount: Events.events.length,
                itemBuilder: (BuildContext context, int index) {
                  return EventCard(event: Events.events[index]);
                },
              ),
            )
          ],
        ));
  }
}
