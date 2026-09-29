import "package:flutter/material.dart";
import 'package:residence_app/pages/create_student.dart';
import 'package:residence_app/pages/login_page.dart';
import 'helpers/colors.dart';
import 'pages/create_manager.dart';
import 'pages/welcome_page.dart';
import 'pages/reset-password.dart';
import 'pages/role-selection.dart';

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
            elevation: 0,
            backgroundColor: Primary,
            foregroundColor: Light,
            textStyle: const TextStyle(fontSize: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      initialRoute: '/create_student',
      routes: {
        '/':               (context) => const WelcomePage(),
        '/login_page':     (context) => const LoginPage(),
        '/create_student':  (context) => const CreateStudent(),
        '/create-manager': (context) => const CreateManagerPage(),
        '/reset-password': (context) => const ResetPasswordPage(),
        '/role-selection': (context) => const RoleSelectionScreen(),
      },
      
    );
  }
}