import 'package:chapter_6_whatsapp_ui/home_screen.dart';
import 'package:chapter_6_whatsapp_ui/understanding_pub.dev.dart';
import 'package:flutter/material.dart';

void main() {
   runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       theme: ThemeData(
        primarySwatch: Colors.teal
       ),
       home: PubDev(),
     );
   }
 }

