import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryapp/Theme/dark_mode.dart';
import 'package:groceryapp/model/cart_model.dart';
import 'package:provider/provider.dart';
import 'Theme/light_mode.dart';
import 'pages/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: GetMaterialApp( // with the Get encierra todo tu proyecto y el Get tiene control de todo
        debugShowCheckedModeBanner: false,
        home: IntroScreen(),
        theme: LigthMode,
      //darkTheme: DarkMode,
      ),
    );
  }
}
