import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:innova_task/ui_screen/screen/splash_screen.dart';
import 'package:innova_task/ui_screen/utils/style.dart';

class InnovaTask extends StatelessWidget {
  const InnovaTask({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Innova Task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        inputDecorationTheme: const InputDecorationTheme(
              hintStyle: TextStyle(
                fontWeight: mediumFontWeight,
                color: textFieldFromColor,
              ),
              border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.brown,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2,
                )
            )
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50.0),
              backgroundColor: Colors.deepPurpleAccent
          ),
        )

      ),
      home: SplashScreen(),
    );
  }
}

