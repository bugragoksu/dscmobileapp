import 'package:flutter/material.dart';

darkTheme(context) {
  return ThemeData(
    fontFamily: 'GoogleSansRegular',
    primarySwatch: Colors.red,
    primaryColor: Colors.black,
    accentColor: Colors.white,
    disabledColor: Colors.grey,
    cardColor: Colors.black,
    canvasColor: Colors.black,
    brightness: Brightness.dark,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: ColorScheme.dark(),
           buttonColor: Colors.white
        ),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),
  );
}

lightTheme(context) {
  return ThemeData(
    fontFamily: 'GoogleSansRegular',
    primarySwatch: Colors.red,
    primaryColor: Colors.white,
    disabledColor: Colors.grey,
    accentColor: Colors.black,
    cardColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
    canvasColor: Colors.grey[50],
    brightness: Brightness.light,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: ColorScheme.light(),
          buttonColor: Colors.blue
        ),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),
  );
}
