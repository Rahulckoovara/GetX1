import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live1/Home.dart';
import 'package:live1/signup.dart';
import 'package:live1/style.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
         TT.Appbar,
         
      body: SafeArea(
        child: 
      Padding(
        padding: const EdgeInsets.all(6.0),
        child: Card(
           shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(
              color: Colors.blue, // Specify the border color here
              width: 2.0,           // Specify the border width here
            ),),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Username',
                    style: TT.PassText),
                    TextFormField(
                      decoration: TT.TextField
                    
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.05,),Text('Password',
                    style: TT.PassText),
                    TextFormField(
                      decoration: TT.TextField
                    
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.05,),
                   ElevatedButton(onPressed: (){
                    Get.to(Home());
                   },
                  child: Text('Login')
                  ,style:TT.Button ),
                   SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Doesnt have an Account?'),
                      // TextButton(onPressed: (){
                      //   Get.to(login());
                      // }, child: Text('Login'))
                      GestureDetector(
                        onTap: (){
                          Get.to(Home2());
                        },
                        child: Text(' SignUp',
                        style: TT.Account
                        ),
                      ),
                    ],
                  )
            
              ],
            ),
          ),
        ),
      )
      ),


    );
  }
    
  }
