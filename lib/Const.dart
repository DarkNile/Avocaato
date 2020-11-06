import 'package:flutter/material.dart';

class Constants {
// dark Theme
  static Color dark_background = Color.fromRGBO(48, 48, 48, 1);
  static Color dark_fontWidgetsBackground = Color.fromRGBO(66, 66, 66, 1);

//text color in dark theme
  static Color dark_textBackgroundPrimary = Colors.white;
  static Color dark_textBackgroundSecondary = Colors.white70;
  static Color dark_textBackgroundDisabled = Colors.white54;


//
//// white Theme
//const Color dark_background = Color.fromRGBO (234,225,225, 1);
//const Color dark_fontWidgetsBackground = Color.fromRGBO(212,212,212,1);
////text color in dark theme
//const Color dark_textBackgroundPrimary = Colors.black;
//const Color dark_textBackgroundSecondary = Colors.black87;
//const Color dark_textBackgroundDisabled= Colors.black54;


  static double APP_BAR_IMAGE_WIDTH = 40.0;
  static double APP_BAR_IMAGE_HEIGHT = 40.0;
  static double APP_BAR_IMAGE_RADIUS = 25.0;
  static double MESSAGE_RADIUS = 15.0;
  static double MESSAGE_PADDING = 4.0;
  static double MESSAGE_MARGIN = 4.0;
  static double MESSAGE_WIDTH = 220.0;
  static double MESSAGE_FONT_SIZE = 16.0;
  static double MESSAGE_DATE_FONT_SIZE = 9.0;
  static double MESSAGE_DATE_MARGIN = 2.0;
  static double INPUT_TEXT_FIELD_RADIUS = 20.0;
  static double INPUT_TEXT_FIELD_PADDING = 13.0;
  static double SEND_BUTTON_RADIUS = 100.0;
  static double SEND_BUTTON_PADDING = 8.0;
  static double SEND_BUTTON_MARGIN = 4.0;


  ///Colors
  ///Chat
  static Color MESSAGE_FONT_COLOR = Colors.white;
  static Color MESSAGE_BACKGROUND_COLOR = Colors.lightBlue;
  static Color MESSAGE_DATE_FONT_COLOR = Colors.white;
  static Color INPUT_TEXT_FIELD_BACKGROUND_COLOR = Colors.lightBlue;
  static Color SEND_BUTTON_BACKGROUND_COLOR = Colors.green;
  static Color CHAT_SCREEN_BACKGROUND = Colors.white;
  static Color PICK_BUTTON_BACKGROUND_COLOR = Colors.red;
  static Color PICK_BUTTON_ICON_COLOR = Colors.white;
  static Color SEND_BUTTON_ICON_COLOR = Colors.white;
  static Color INPUT_TEXT_FIELD_HINT_COLOR = Colors.white;

  static String TEXT_FIELD_HINT = "...اكتب رساله";

  ///Links
  static String USER_IMAGE_PLACE_HOLDER = 'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png';


// convert english number into arabic

  static String arabicNumbers = "٠١٢٣٤٥٦٧٨٩";

  static String convertToArabicNumbers(String englishNumbers) {
    String convertedNumbers = "";
    for (int i = 0; i < englishNumbers.length; i++) {
      convertedNumbers += Constants.arabicNumbers[int.parse(englishNumbers[i])];
    }
    return convertedNumbers;
  }


// function to detect if the mobile is in orientation or protrait

  static bool isLandScape(BuildContext context) {
    return MediaQuery
        .of(context)
        .orientation == Orientation.landscape;
  }
  static Color lightPrimary = Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Colors.blue;
  static Color darkAccent = Colors.blueAccent;
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Colors.black;
  static Color badgeColor = Colors.red;


  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor: lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        title: TextStyle(
          color: darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: dark_background,
    accentColor: dark_fontWidgetsBackground,

    primaryColor: dark_textBackgroundPrimary,
    primaryColorLight: dark_textBackgroundSecondary,
    primaryColorDark: dark_textBackgroundDisabled,

    scaffoldBackgroundColor: dark_background,
    cursorColor: darkAccent,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        title: TextStyle(
          color: lightBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );

}