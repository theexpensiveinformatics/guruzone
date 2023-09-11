import 'package:flutter/material.dart';
import 'package:guruzone/screens/homeScreen.dart';
import 'package:guruzone/screens/signUpScreen.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/h1.dart';
import 'package:guruzone/styles/texts/h2.dart';

class choiceScreen extends StatefulWidget {
  const choiceScreen({super.key});

  @override
  State<choiceScreen> createState() => _choiceScreenState();
}

class _choiceScreenState extends State<choiceScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Choose Option',style: TextStyle(color: darkText,fontSize: 18,fontFamily: 'semibold')),

            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => signUpScreen(),)),
                  child: Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      color: background,
                      border: Border.all(color: borderColor,width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/graduate.png',cacheWidth: 42),
                        SizedBox(height: 12,),
                        Text('Student',style: TextStyle(color: darkText,fontSize: 15,fontFamily: 'semibold'),),
                      ],
                    ),
                  ),
                ),

                SizedBox(width: 15,),
                Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: background,
                    border: Border.all(color: borderColor,width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => signUpScreen(),));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/tutor.png',cacheWidth: 42),
                        SizedBox(height: 12,),
                        Text('Mentor',style: TextStyle(color: darkText,fontSize: 15,fontFamily: 'semibold'),),
                      ],
                    ),
                  ),
                ),

                
              ],
            )

          ],
        ),
      ),
    );
  }
}
