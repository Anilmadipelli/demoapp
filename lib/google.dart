import 'package:demoapp/LoginController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_sign_in/google_sign_in.dart';


class Google extends StatelessWidget {
  final controller = Get.put(LoginController());
   Google({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ElevatedButton Tutorial')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                GoogleSignIn().signIn();
              },
              child: const Text('Click Me'),
            ),
          ],
        ),

        // child:
        // Column(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     CircleAvatar(
        //     //  backgroundColor: Image.network().image,
        //       radius: 100,
        //     ),
        //     Text('name'),
        //     Text('Email'),
        //   ],
        // ),
      ),
    );
  }
}
