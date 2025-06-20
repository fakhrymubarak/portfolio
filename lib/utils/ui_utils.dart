import 'package:flutter/material.dart';

bool getIsMobile(BuildContext context) {
  final mediaQuerySize = MediaQuery.of(context).size;
  return mediaQuerySize.width < 600;
}