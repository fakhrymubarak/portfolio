import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' show launchUrl;

bool getIsMobile(BuildContext context) {
  final mediaQuerySize = MediaQuery.of(context).size;
  return mediaQuerySize.width < 600;
}

Future<void> launchWebUrl(Uri url, BuildContext context) async {
  if (!await launchUrl(url)) {
    SnackBar snackBar = SnackBar(
      content: Text('Could not launch $url'),
    );
    if (context.mounted) ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
