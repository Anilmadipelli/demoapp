import 'package:demoapp/Auth.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  String email;
   Welcome({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children:[
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
          SizedBox(height: 70,),
           Container(
             width: w,
             margin: const EdgeInsets.only(left:20),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                   "Welcome to innovations",textAlign:TextAlign.center,style: TextStyle(
                     fontWeight: FontWeight.bold,fontSize:25,color: Colors.blue
                 ),
                 ),
                 Text(
                   email,
                   textAlign:TextAlign.center,style: TextStyle(
                     color: Colors.grey[400]
                 ),
                 ),
               ],
             ),
           ),
          SizedBox(height: 100,),
          GestureDetector(
            onTap: ()
            {
              AuthController.instance.logout();
            },
            child: Container(
              width:w*0.5 ,
              height:h*0.2,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(
                        "img/imgbut1.png"
                    ),
                    fit: BoxFit.cover
                ),
              ),
              child:   Center(
                child: Text(
                  "Sign out",
                  style:  TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),



        ],
      ),
    );
  }
}
