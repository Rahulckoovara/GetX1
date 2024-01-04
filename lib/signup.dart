import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live1/login.dart';
import 'package:live1/style.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
         TT.Appbar,
      
      body: SafeArea(
        child: Padding(
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.05,),
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
                    Text('Email',
                    style: TT.PassText),
                    
                    TextFormField(
                      decoration: TT.TextField
                    
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.05,),
                    Text('Confirm Password',style: TT.PassText),
                    TextFormField(
                      decoration: TT.TextField
                    
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.05,),
                   //CustomButton(buttonText: "Submit")
                   ElevatedButton(onPressed: (){
                    //Get.to(login());
                   },
                    child: Text('Register')
                    ,style:TT.Button ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Already have an Account?'),
                        // TextButton(onPressed: (){
                        //   Get.to(login());
                        // }, child: Text('Login'))
                        GestureDetector(
                          onTap: (){
                            Get.to(login());
                          },
                          child: Text(' Login',
                          style: TT.Account
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.05,),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}