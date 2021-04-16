import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_theme.dart';
import 'scenery_theme.dart';

/// You can add themes for your own custom widgets here.
/// NB: for this challenge, it is only required to modify sceneryThemeData
class CustomWidgetThemes {
  static CustomWidgetThemes of(BuildContext context) =>
      CustomWidgetThemes._(context);

  SceneryThemeData? sceneryThemeData;

  // todo(you) These colors are dreary! Modify this so the picture has different values for light and dark modes.
  //  If you are feeling ambitions, get creative and make a third theme (or a fourth!)
  CustomWidgetThemes._(BuildContext context) {
    final themeType = Provider.of<MyTheme>(context).themeType;

    switch (themeType) {
      case ThemeType.Light:
        sceneryThemeData = SceneryThemeData(
          skyFillColor: Colors.lightBlue.shade100,
          mountainFillColor: Colors.green,
          waterFillColor: Color(0xff1fa4ae),
          drawMoon: false,
          drawSun: true,
        );
        break;
      case ThemeType.Dark:
        sceneryThemeData = SceneryThemeData(
          skyFillColor: Colors.black,
          mountainFillColor: Colors.blueGrey[600],
          waterFillColor: Colors.blueGrey.shade800,
          drawMoon: true,
          drawSun: false,
        );
        break;
      case ThemeType.Other:
        sceneryThemeData = SceneryThemeData(
          skyFillColor: Color(0xff132C33),
          mountainFillColor: Colors.blueGrey.shade600,
          waterFillColor: Colors.blueGrey.shade800,
          drawMoon: true,
          drawSun: false,
        );
        break;
      case ThemeType.Happy:
        sceneryThemeData = SceneryThemeData(
          skyFillColor: Colors.white,
          mountainFillColor: Color(0xff6E5048),
          waterFillColor: Color(0XFF64B7D4),
          drawMoon: false,
          drawSun: true,
        );
        break;
      case ThemeType.Flutterista:
        sceneryThemeData = SceneryThemeData(
          skyFillColor: Color(0Xff210124),
          mountainFillColor: Color(0Xff6A687A),
          waterFillColor: Color(0XFF536271),
          drawMoon: true,
          drawSun: false,
        );
        break;
    }
  }
}
