import 'package:url_launcher/url_launcher.dart';

void openGoogleMaps(String placeName) async {
  final query = Uri.encodeComponent(placeName);
  final url = 'https://www.google.com/maps/search/?api=1&query=$query';

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
