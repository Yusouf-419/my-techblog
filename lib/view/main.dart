import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:techblog/view/SplashScreen.dart';
import 'package:techblog/my-colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('fa', '')],
      theme: ThemeData(
        textTheme: TextTheme(
          headlineSmall: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 16,
            color: SolidColors().subTitleText,
          ),
          headlineMedium: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: SolidColors().titleText,
          ) ,
          headlineLarge: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 16,
            color: SolidColors().titleText,
          ),    bodySmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: SolidColors().colorTitle,
          ),
          bodyMedium: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: SolidColors().textTitle
          )
         
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
