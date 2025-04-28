import 'package:dating_engine/pages/home_screen.dart';
import 'package:dating_engine/pages/regestration/login_screen.dart';
import 'package:dating_engine/pages/regestration/new_password_screen.dart';
import 'package:dating_engine/pages/regestration/registration_screen.dart';
import 'package:dating_engine/pages/regestration/restore_password_screen.dart';
import 'package:dating_engine/pages/roles/main_role_screen.dart';
import 'package:dating_engine/pages/roles/references_screen.dart';
import 'package:dating_engine/pages/roles/select_role_screen.dart';
import 'package:dating_engine/pages/roles/tell_about_you_screen.dart';
import 'package:dating_engine/pages/roles/your_role_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Inter',
        useMaterial3: true,
      ),
      routes: {
        '/register': (BuildContext context) => const RegistrationScreen(),
        '/login': (BuildContext context) => const LoginScreen(),
        '/new_password': (BuildContext context) => const NewPasswordScreen(),
        '/restore_password': (BuildContext context) =>
            const RestorePasswordScreen(),
        '/main_role': (BuildContext context) => const MainRoleScreen(),
        '/select_role': (BuildContext context) => const SelectRoleScreen(),
        '/tell_about_you': (BuildContext context) => const TellAboutYouScreen(),
        '/your_role': (BuildContext context) => const YourRoleScreen(),
        '/references': (BuildContext context) => const ReferencesScreen(),
      },
      home: const HomePage(),
    );
  }
}
