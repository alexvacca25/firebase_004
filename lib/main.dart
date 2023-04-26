import 'package:firebase_004/domain/controller/controllerUserFirebase.dart';
import 'package:firebase_004/ui/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GetPlatform.isWeb
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyCnsiWjj1_IGe8pQ3Rdh2UOLhtjQaMrCIw",
              authDomain: "movil2023g02.firebaseapp.com",
              projectId: "movil2023g02",
              storageBucket: "movil2023g02.appspot.com",
              messagingSenderId: "227445508499",
              appId: "1:227445508499:web:eaa5d57aec6379af0c4066"))
      : await Firebase.initializeApp();

  Get.put(ControlUserAuth());
  runApp(const App());
}
