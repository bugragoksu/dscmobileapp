import 'package:dscmobile/src/config/settings.dart';
import 'package:toast/toast.dart';
import 'package:url_launcher/url_launcher.dart';

class Tools {
  static launchURL(String url, context) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      showToast('${Settings.loadUrlErrorText} : $url', context);
    }
  }

  static showToast(String msg, context) {
    Toast.show(msg, context,
        duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
  }
}
