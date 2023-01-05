import 'package:url_launcher/url_launcher.dart';

class Util {
  const Util._();

  static Future<void> launch(String url) async {
    final value = Uri.parse(url);
    if (await canLaunchUrl(value)) await launchUrl(value);
  }
}