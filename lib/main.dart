import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live1/signup.dart';
void main(){
  runApp(MyApp()
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home2(),
      // theme: ThemeData(
      //   primarySwatch: Colors.blue
      // ,primaryColor: Colors.grey),
      // debugShowCheckedModeBanner: false,
    );
  }
}