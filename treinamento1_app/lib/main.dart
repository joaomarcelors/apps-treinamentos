import 'package:flutter/material.dart';
import 'package:treinamento1_app/utils/app_routes.dart';
import 'package:treinamento1_app/views/auth_screen.dart';
import 'package:treinamento1_app/views/home_screen.dart';
import 'package:treinamento1_app/views/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue[900],
      ),
      routes: {
        AppRoutes.auth: (ctx) => AuthScreen(),
        AppRoutes.home: (ctx) => TabsScreen(),
      },
    );
  }
}