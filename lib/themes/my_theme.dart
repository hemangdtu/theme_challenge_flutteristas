import 'package:flutter/material.dart';

class MyTheme with ChangeNotifier {
  var _themeType = ThemeType.Light;

  ThemeType get themeType => _themeType;

  MyTheme() {
    /// If the user changes the theme in their device's settings, this is picked up on as well:
    final window = WidgetsBinding.instance?.window;
    window?.onPlatformBrightnessChanged = () {
      final brightness = window.platformBrightness;

      switch (brightness) {
        case Brightness.dark:
          setThemeType(ThemeType.Dark);
          break;
        case Brightness.light:
          setThemeType(ThemeType.Light);
      }
    };
  }
  void setThemeType(ThemeType themeType) {
    _themeType = themeType;
    notifyListeners();
  }

  ThemeData get currentThemeData {
    switch (themeType) {
      case ThemeType.Light:
        return ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.grey.shade100,
          accentColor: Colors.yellow,
          textTheme: TextTheme(
            headline3: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
              color: Colors.yellow.shade600,
            ),
            subtitle1: TextStyle(fontSize: 15.0),
          ),
        );
      case ThemeType.Dark:
        return ThemeData(
          brightness: Brightness.dark,
          textTheme: TextTheme(
            headline3: TextStyle(
              color: Colors.white,
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
            subtitle1: TextStyle(fontSize: 15.0, color: Colors.grey.shade400),
            bodyText1: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Georgia',
                color: Colors.grey.shade300),
          ),
        );
      case ThemeType.Other:
        return ThemeData(
          primaryColor: Colors.black,
          accentColor: Colors.grey.shade100,
          unselectedWidgetColor: Colors.grey,
          textTheme: TextTheme(
            headline3: TextStyle(
              color: Colors.white,
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
            subtitle1: TextStyle(fontSize: 15.0, color: Colors.grey.shade400),
            bodyText1: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Georgia',
                color: Colors.grey.shade300),
          ),
        );
      case ThemeType.Happy:
        return ThemeData(
          accentColor: Colors.white,
          textTheme: TextTheme(
            headline3: TextStyle(
              color: Color(0xff0B40A7),
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
            subtitle1: TextStyle(fontSize: 15.0, color: Colors.white),
            bodyText1: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Georgia',
                color: Colors.grey.shade300),
          ),
        );
      case ThemeType.Flutterista:
        return ThemeData(
          brightness: Brightness.dark,
          primaryColor: Color(0xff750D37),
          accentColor: Colors.white,
          textTheme: TextTheme(
            headline3: TextStyle(
              color: Colors.white,
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
            subtitle1: TextStyle(fontSize: 15.0, color: Colors.white),
            bodyText1: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Georgia',
                color: Colors.grey.shade300),
          ),
        );
    }
  }
}

enum ThemeType {
  Light,
  Dark,
  Other,
  Happy,
  Flutterista,
}
