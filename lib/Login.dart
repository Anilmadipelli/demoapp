import 'package:demoapp/Auth.dart';
import 'package:demoapp/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();
  var passwordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.height;
    double h=MediaQuery.of(context).size.shortestSide;
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(

        children:
        [
          const SizedBox(height: 20,),
          CircleAvatar(
            backgroundColor: Colors.white70,
            radius: 70,
            backgroundImage: AssetImage(
              "img/Venagoprofile.png",

            ),
          ),

          Container(
            margin: const EdgeInsets.only(left: 20,right: 20),
            width: w,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Text(
                  "Welcome",
                  style:  TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const Text(
                  "Sign into your Account",
                  style:  TextStyle(
                    fontSize: 20,
                    color: Colors.cyan,
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: const Offset(1,1),
                            color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                  ),
                  child: TextField(
                    controller: emailController,
                    decoration:InputDecoration(
                      hintText: 'Email',
                      prefixIcon: const Icon(Icons.email, color:Colors.deepOrangeAccent),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            color: Colors.white,
                            width:1.0
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            color: Colors.white,
                            width:1.0
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: const Offset(1,1),
                            color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                  ),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration:InputDecoration(
                      hintText: 'Password',
                      prefixIcon: const Icon(Icons.password, color:Colors.deepOrangeAccent),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            color: Colors.white,
                            width:1.0
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            color: Colors.white,
                            width:1.0
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: Container(),),
                    const Text(
                      "Forgot your password   ",
                      style:  TextStyle(
                        fontSize: 20,
                        color: Colors.cyan,
                      ),
                    ),
                  ],
                )

              ],
            )  ,
          ),
          const SizedBox(height: 30,),
          GestureDetector(
            onTap:() {
           AuthController.instance.Login(emailController.text.trim() ,passwordController.text.trim());
            },
            child: Container(
              child:   const Center(
                child: Text(
                  "sign in",
                  style:  TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

              ),
            ),
          ),
          const SizedBox(height: 25,),
          RichText(text:TextSpan(
              text: "Don\'t have an Account?",
              style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 22
              ),
              children: [
                TextSpan(
                    text: "create",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),
                    recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>const SignUpPage())
                ),
              ]
          ),
          ),

        ],
      ),
    );
  }
}