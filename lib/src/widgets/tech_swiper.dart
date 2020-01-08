import 'package:dscmobile/src/data/technologies.dart';
import 'package:dscmobile/src/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class TechSwiper extends StatelessWidget {
  const TechSwiper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              color: ThemeSwitcher.of(context).isDarkModeOn
                  ? Color(0xff1f2124)
                  : Colors.white,
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 175,
                      child: Image.asset(
                        Technologies.technologies[index].technologyImg,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      Technologies.technologies[index].technologyName,
                      style: Theme.of(context).textTheme.headline,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Text(
                        Technologies.technologies[index].technologyDesc,
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .apply(fontSizeDelta: 5),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: Technologies.technologies.length,
          control: new SwiperControl(color: Theme.of(context).accentColor)),
    );
  }
}
