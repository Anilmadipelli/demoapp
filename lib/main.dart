import 'package:demoapp/Auth.dart';
import 'package:demoapp/Login.dart';
import 'package:demoapp/Homepage.dart';
import 'package:demoapp/Welcome.dart';
import 'package:demoapp/google.dart';
import 'package:demoapp/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Splashscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Welcome',
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
      home: Login()
    );
  }
}


