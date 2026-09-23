import "package:flutter/material.dart";
import 'helpers/colors.dart';
import 'pages/create_manager.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Residential hostel App',
      theme: ThemeData(
        scaffoldBackgroundColor: Light,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Primary,
            foregroundColor: Light,
            textStyle: const TextStyle(fontSize: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/create-manager': (context) => const CreateManagerPage(),
      },
      
    );
  }
}