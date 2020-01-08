import 'package:dscmobile/src/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {
  final String text;
  final String titleText;
  final IconData icon;
  final Color iconColor;

  const TextCard(
      {Key key, this.text, this.titleText, this.icon, this.iconColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Card(
        elevation: 5,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        color: ThemeSwitcher.of(context).isDarkModeOn
            ? Color(0xff1f2124)
            : Colors.white,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
          children: <Widget>[
           
            Icon(
              icon,
              size: 50,
              color: iconColor,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              titleText,
              style: Theme.of(context).textTheme.headline,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Text(
                text,
                style:
                    Theme.of(context).textTheme.caption.apply(fontSizeDelta: 5),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        )      ),
    );
  }
}
