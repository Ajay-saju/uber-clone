import "package:driver/constants/app_colors.dart";
import "package:flutter/material.dart";

ThemeData customLightTheme() {
  TextTheme _customLightThemesTextTheme(TextTheme base) {
    return base.copyWith(
      headlineLarge: base.headlineLarge!.copyWith(
        fontFamily: "Roboto",
        fontSize: 22.0,
        color: Colors.green,
      ),
      headlineMedium: base.headlineMedium!.copyWith(
        fontSize: 15.0,
        color: Colors.orange,
      ),
      headlineSmall: base.headlineSmall!.copyWith(
        fontSize: 24.0,
        color: Colors.white,
      ),
      headline3: base.headline3!.copyWith(
        fontSize: 22.0,
        color: Colors.grey,
      ),
      caption: base.caption!.copyWith(
        color: Color(0xFFCCC5AF),
      ),
      bodyText2: base.bodyText2!.copyWith(color: Color(0xFF807A6B)),
      bodyText1: base.bodyText1!.copyWith(color: Colors.brown),
    );
  }

  final ThemeData lightTheme = ThemeData.light();
  return lightTheme.copyWith(
    textTheme: _customLightThemesTextTheme(lightTheme.textTheme),
    primaryColor: Color(0xffce107c),
    indicatorColor: Color(0xFF807A6B),
    scaffoldBackgroundColor: Color(0xFFF5F5F5),
//  accentColor: Color(0xFFFFF8E1),
    primaryIconTheme: lightTheme.primaryIconTheme.copyWith(
      color: Colors.white,
      size: 20,
    ),
    iconTheme: lightTheme.iconTheme.copyWith(
      color: Colors.white,
    ),
//  buttonColor: Colors.white,
    backgroundColor: Colors.white,
    tabBarTheme: lightTheme.tabBarTheme.copyWith(
      labelColor: Color(0xffce107c),
      unselectedLabelColor: Colors.grey,
    ),
    buttonTheme: lightTheme.buttonTheme.copyWith(buttonColor: Colors.red),
//  cursorColor: Colors.deepPurple,
    errorColor: Colors.red,
  );
}

ThemeData lightTheme() {
  final ThemeData lightTheme = ThemeData.light();
  return lightTheme.copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: navBarColor, // Set the text color for dark mode
        ),
      ),
      tabBarTheme: lightTheme.tabBarTheme.copyWith(
        labelColor: Color(0xffce107c),
        unselectedLabelColor: Colors.grey,
      ),
      buttonTheme: lightTheme.buttonTheme.copyWith(buttonColor: Colors.red),
      indicatorColor: Color(0xFF807A6B),
      scaffoldBackgroundColor: Color(0xFFF5F5F5),
      primaryIconTheme: lightTheme.primaryIconTheme.copyWith(
        color: Colors.white,
        size: 20,
      ),
      iconTheme: IconThemeData(color: navBarColor));
}

ThemeData customDarkTheme() {
  final ThemeData darkTheme = ThemeData.dark();
  return darkTheme.copyWith(
    brightness: Brightness.dark,
    primaryColor:
        Colors.black38, // or Brightness.light based on the current mode
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: Colors.amber, // Set the text color for dark mode
      ),
    ),
//     primaryColor: Colors.black38,
//     indicatorColor: Color(0xFF807A6B),
// //  accentColor: Color(0xFFFFF8E1),
//     primaryIconTheme: darkTheme.primaryIconTheme.copyWith(
//       color: Colors.green,
//       size: 20,
//     ),
// //  cursorColor: Colors.green,
  );
}
