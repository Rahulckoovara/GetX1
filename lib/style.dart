import 'package:flutter/material.dart';

class TT{
  static const PassText= TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold
  );

  static const TextField= InputDecoration(
                    border: OutlineInputBorder()

  );


 static const Button= ButtonStyle(
  backgroundColor: MaterialStatePropertyAll(Colors.indigo),
  foregroundColor: MaterialStatePropertyAll(Colors.white),
  fixedSize: MaterialStatePropertyAll(Size(500.0, 50.0)),
 
 );


   static var Appbar= AppBar(
                      backgroundColor: Colors.indigo,
   );

   static const Account= TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.indigo
   );
}