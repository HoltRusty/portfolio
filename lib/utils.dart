import 'package:url_launcher/url_launcher.dart';

class Utils {
  static Future openLink({required String url}) => launchUrl(url);

  static Future launchUrl(String url) async {
    if (await canLaunch(url)) {
      launchUrl(url);
    }
  }
}
