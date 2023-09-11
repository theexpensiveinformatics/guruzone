import 'package:flutter/material.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/h1.dart';
import 'package:guruzone/styles/texts/h2.dart';

class signUpScreen extends StatefulWidget {
  const signUpScreen({super.key});

  @override
  State<signUpScreen> createState() => _signUpScreenState();
}

class _signUpScreenState extends State<signUpScreen> {

  FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: EdgeInsets.only(left: 25,right: 25),
        width: double.infinity,
        height: double.infinity,
        color: background,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/guru.png',cacheWidth: 28,),
                SizedBox(width: 10,),
                Text('Guru',style: TextStyle(fontFamily: 'bold',fontSize: 23,color: blue),),
                Text('Zone',style: TextStyle(fontFamily: 'bold',fontSize: 23,color: Color(0xFFadadad)),),
              ],
            ),
            SizedBox(height: 10,),
            Text('Create An Account',style: TextStyle(fontFamily: 'bold',fontSize: 23,color: darkText),),


            SizedBox(height: 20,),

            TextField(
              focusNode: _focusNode,
              style: h2,
              textAlign: TextAlign.left,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: borderColor,width: 1)),
                prefixIcon: Container(height: 50,width: 70,child: Center(child: Icon(Icons.account_circle_outlined,color: darkText,size: 20,))),
                hintText: 'Name',hintStyle: TextStyle(color: Colors.grey,fontFamily: 'semibold'),
                filled: true,
                fillColor: _focusNode.hasFocus ? Colors.white : Colors.white,
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                        style: BorderStyle.solid
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide:  BorderSide(
                      color: darkText,
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide:  BorderSide(
                      width: 1,
                      color: borderColor,
                    )
                ),

              ),


            ),
            SizedBox(height: 10,),

            TextField(
              focusNode: _focusNode,
              style: h2,
              textAlign: TextAlign.left,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: borderColor,width: 1)),
                prefixIcon: Container(height: 50,width: 70,child: Center(child: Icon(Icons.email_outlined,color: darkText,size: 20,))),
                hintText: 'Email',hintStyle: TextStyle(color: Colors.grey,fontFamily: 'semibold'),
                filled: true,
                fillColor: _focusNode.hasFocus ? Colors.white : Colors.white,
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                        style: BorderStyle.solid
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide:  BorderSide(
                      color: darkText,
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide:  BorderSide(
                      width: 1,
                      color: borderColor,
                    )
                ),

              ),


            ),

          ],
        ),
      ),
    );
  }
}
