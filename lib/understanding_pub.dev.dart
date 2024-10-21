import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:readmore/readmore.dart';



 class PubDev extends StatelessWidget {
   const PubDev({Key? key}) : super(key: key);



   @override
   Widget build(BuildContext context) {
     return   MaterialApp(
       home: Scaffold(
         appBar: AppBar(),
         body:  Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
                    PinCodeTextField(
                        appContext: context,
                        length: 5,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black,
                    obscureText: true,
                    enabled: true,
                    obscuringCharacter: '#',
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(15),
                      selectedColor: Colors.grey,
                      inactiveColor: Colors.grey,
                      activeColor: Colors.blue
                    ),
                    )
             ],
           ),
         ),
       ),
     );
   }
 }


// Center(
//   child: DefaultTextStyle(
//     style: const TextStyle(
//       fontSize: 20.0,
//     ),
//     child: AnimatedTextKit(
//       animatedTexts: [
//         WavyAnimatedText('Hello World'),
//         WavyAnimatedText('Look at the waves'),
//       ],
//       isRepeatingAnimation: true,
//       onTap: () {
//         print("Tap Event");
//       },
//     ),
//   ),
// )








// AnimatedTextKit(animatedTexts: [
// RotateAnimatedText(
// 'Fade First',
// textStyle: TextStyle(fontSize: 50)
//
// )
// ],
// totalRepeatCount: 10,
// ),

// ReadMoreText(
// "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
// trimLines: 2,
// trimMode: TrimMode.Line,
// trimCollapsedText: 'Show more',
// trimExpandedText: 'Show less',
// moreStyle: TextStyle(color: Colors.blue),
// colorClickableText: Colors.teal,
//
// )