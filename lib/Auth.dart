import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'Login.dart';
import 'Welcome.dart';

class AuthController extends GetxController{
  //AuthController.instance
  static AuthController instance =Get.find();
  late Rx<User?>_user;//email //password
   FirebaseAuth auth=FirebaseAuth.instance;
   @override
  void onReady()
   {
     super.onReady();
     _user = Rx<User?>(auth.currentUser);
     _user.bindStream(auth.userChanges());//notify everything
      ever(_user,_initialScreen);//listener and callback function.about changes
   }
   _initialScreen(User? user) {
     if (user == null) {
           print("login page");
           Get.offAll(()=>Login);

     }
     else
       {
         Get.offAll(()=>Welcome(email:user.email!));
       }
   }
   Future<void> register(String email,password)
   async {
     try{
      await  auth.createUserWithEmailAndPassword(email: email, password: password);
     }
     catch(e){
       Get.snackbar("About user", "user message",
           backgroundColor: Colors.redAccent,
       snackPosition: SnackPosition.BOTTOM,
         titleText: Text("Acount creation failed",
         style: TextStyle(
         color: Colors.white
         ),
         ),
         messageText: Text(e.toString(),
         style: TextStyle(
           color: Colors.white
         ),
         )
       );
     }
   }
  Future<void> Login(String email,password)
  async {
    try{
      await  auth.signInWithEmailAndPassword(email: email, password: password);
    }
    catch(e){
      Get.snackbar("About Login", "login message",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text("Login failed",
            style: TextStyle(
                color: Colors.white
            ),
          ),
          messageText: Text(e.toString(),
            style: TextStyle(
                color: Colors.white
            ),
          )
      );
    }
  }
  Future<void> logout()
  async {
    await auth.signOut();
  }
}