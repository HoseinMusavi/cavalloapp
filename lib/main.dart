import 'package:cavalloapp/provider/controler/provider_controler.dart';
import 'package:cavalloapp/screens/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => (Control_Provider())),
    ],
    child: MaterialApp(
      home: Home_screen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            centerTitle: true,
          ),
          scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255)),
    ),
  ));
}
