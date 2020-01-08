import 'package:dscmobile/src/config/settings.dart';
import 'package:dscmobile/src/data/teams.dart';
import 'package:flutter/material.dart';
import 'package:dscmobile/src/widgets/user_card.dart';

class TeamPage extends StatefulWidget {
  TeamPage({Key key}) : super(key: key);

  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              Settings.teamPageTitle,
              style: Theme.of(context).textTheme.subtitle,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              Settings.teamPageSubTitle,
              style: Theme.of(context).textTheme.caption,
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              controller: ScrollController(),
              shrinkWrap: true,
              itemBuilder: (c, i) {
                return UserCard(
                  user: Teams.coreTeam[i],
                );
              },
              itemCount: Teams.coreTeam.length,
            ),
          ],
        ));
  }
}
