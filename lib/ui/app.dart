import 'package:firebase_004/ui/auth/perfil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'auth/login.dart';
import 'auth/register.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Catalogo TI',
      theme: ThemeData.light(),
      initialRoute: '/login',
      routes: {
        "/login": (context) => const Login(),
        "/register": (context) => const Register(),
        "/perfil": (context) => const Perfil(),
      },
    );
  }
}
