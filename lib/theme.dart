import 'package:chat/constants.dart';
import 'package:flutter/material.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    iconTheme: IconThemeData(color: kContentColorLightTheme),
    textTheme: Theme.of(context)
        .textTheme
        .apply(displayColor: kContentColorLightTheme),
    colorScheme: ColorScheme.light(
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: kContentColorLightTheme,
    iconTheme: IconThemeData(color: kContentColorDarkTheme),
    textTheme:
        Theme.of(context).textTheme.apply(displayColor: kContentColorDarkTheme),
  );
}
