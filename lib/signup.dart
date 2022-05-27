import 'package:demoapp/Auth.dart';
import 'package:demoapp/googlesignin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'google.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController= TextEditingController();
    List images=[
      "e.png",
      "g.png"
    ];

    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children:
        [
          Container(
            width:w ,
            height: h*0.6,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "img/"
                  ),
                  fit: BoxFit.cover
              ),
            ),
            child:
            Column(
              children: [
                SizedBox(
                  height:h*0.20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white70,
                  radius: 70,
                  backgroundImage: AssetImage(
                    "img/Venagoprofile.png",

                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20,right: 20),
            width: w,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [

                SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                  ),
                  child: TextField(
                    controller: emailController,
                    decoration:InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email, color:Colors.deepOrangeAccent),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            color: Colors.white,
                            width:1.0
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
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
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                  ),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration:InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.password, color:Colors.deepOrangeAccent),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            color: Colors.white,
                            width:1.0
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
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
                SizedBox(height: 20,),
              ],
            )  ,
          ),
          SizedBox(height: 30,),
          GestureDetector(
            onTap: (){
              AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
            },
            child: Container(

              child:   Center(
                child: Text(
                  "sign up",
                  style:  TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          // RichText(text:TextSpan(
          //     text: "Don\'t have an Account?",
          //     style: TextStyle(
          //         color: Colors.grey[300],
          //         fontSize: 22
          //     ),
          //     children: [
          //       TextSpan(
          //           text: "Sign with google",
          //           style: const TextStyle(
          //               color: Colors.black,
          //               fontSize: 22,
          //               fontWeight: FontWeight.bold
          //           ),
          //           recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>Googlesignin())
          //       ),
          //     ]
          // ),
          // ),
          SizedBox(height: 20,),
          RichText(text:
          TextSpan(
              recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
              text: "Have an Account?",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[500],
              )
          )),
          SizedBox(height: 30,),
          RichText(text:TextSpan(
            text: "Signup by following",
            style: TextStyle(
                color: Colors.blue[300],
                fontSize: 15

            ),

          ),),
          Wrap(
            children:
            List<Widget>.generate(
                2,
                    (index){
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[500],
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        backgroundImage: AssetImage(
                          "img/"+images[index],
                        ),
                      ),
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}