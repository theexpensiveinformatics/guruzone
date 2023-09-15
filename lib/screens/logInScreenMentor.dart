import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:guruzone/screens/choiceScreen.dart';
import 'package:guruzone/screens/homeBottom.dart';
import 'package:guruzone/screens/signUpScreenMentor.dart';
import 'package:guruzone/styles/backgrounds/backgroundWhite.dart';
import 'package:guruzone/styles/backgrounds/boxTextInput.dart';
import 'package:guruzone/styles/backgrounds/choiceDisable.dart';
import 'package:guruzone/styles/backgrounds/choiceEnable.dart';
import 'package:guruzone/styles/backgrounds/roundedBlue.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/blueRegular.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Light.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future<void> loginUser(BuildContext context, String email, String password) async {
  final url = Uri.parse('https://vadodara-hackthon-4-0.vercel.app/api/v1/auth/login');

  try {
    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    print(response.statusCode);
    if (response.statusCode == 200) {
      // Successful login
      final Map<String, dynamic> responseData = json.decode(response.body);
      final String token = responseData['accessToken'];

      print(token);
      // Store the token in SharedPreferences
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', token);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Login Successful.',
            style: TextStyle(fontFamily: 'semibold'),
          ),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.blue,
          behavior: SnackBarBehavior.floating,
        ),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => homeBottom(token: token),
        ),
      );

    } else {
      // Login failed
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Oops! Something went wrong.',
            style: TextStyle(fontFamily: 'semibold'),
          ),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
        ),
      );// Return an empty string when login fails
    }
  } catch (e) {
    // Handle any exceptions that occur during the request
    print('Error: $e');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'An error occurred while logging in.',
          style: TextStyle(fontFamily: 'semibold'),
        ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
      ),
    );// Return an empty string in case of exceptions
  }
}
class logInScreenMentor extends StatefulWidget {
  const logInScreenMentor({super.key});


  @override
  State<logInScreenMentor> createState() => _logInScreenMentorState();


}

class _logInScreenMentorState extends State<logInScreenMentor> {
  String token = '';
  @override
  void initState() {
    super.initState();
    getToken(); // Call this method to retrieve the token when the widget initializes
  }

  Future<void> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    final storedToken = prefs.getString('token') ?? ''; // Use a default value if the token is not found
    setState(() {
      token = storedToken;
      print('CHECKKKKKKKKKK : $token');
      if(token!='')
      {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>homeBottom(token: token)));
      }
    });
  }



  var controllerEmail = TextEditingController();
  var controllerPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(

        alignment: Alignment.topLeft,
        height: double.infinity,
        width: double.infinity,

        child: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


              Container(width:double.infinity,
                  height: 260,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                      color: Color(0xFFF5F5F5),
                      blurRadius: 40,
                        spreadRadius: 10,
                        offset: Offset(0.0, 40.20)
                    )]
                  ),
                  child: Hero(tag:'tutor',child: Image.asset('assets/images/mentor.png',cacheHeight: 160,))),
              SizedBox(height: 20,),
              Text('Welcome Back',style: TextStyle(fontFamily: 'bold',fontSize: 25,color: darkText),),
              Text('Let\'s ready to serve knowledge!',style: TextStyle(fontFamily: 'regular',fontSize: 16,color: darkText),),


              //email
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(right: 25,left: 25),
                decoration: boxTextInput,
                height: 55,width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 20,),
                    Icon(Icons.email_outlined,color: darkText,),
                    SizedBox(width: 20,),
                    Container(width: 1,color: borderColor,height: 25,),
                    SizedBox(width: 10,),
                    Container(width: MediaQuery.of(context).size.width/1.5,height: 50,
                      alignment: Alignment.center,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: controllerEmail,
                        style:TextStyle(fontFamily: 'regular',fontSize: 16,overflow:TextOverflow.ellipsis),
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: borderColor,width: 1)),
                          hintText: 'Email',hintStyle: TextStyle(fontFamily: 'regular'),
                          filled: true,
                          fillColor:  Colors.white,
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: const BorderSide(
                                  color: Colors.white,
                                  width: 1,
                                  style: BorderStyle.solid
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide:  BorderSide(
                                color: Colors.white,
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide:  BorderSide(
                                width: 1,
                                color: Colors.white,
                              )
                          ),

                        ),
                      ),),




                  ],
                ),
              ),

              //password
              SizedBox(height: 8,),
              Container(
                margin: EdgeInsets.only(right: 25,left: 25),
                decoration: boxTextInput,
                height: 55,width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 20,),
                    Icon(Icons.password_outlined,color: darkText,),
                    SizedBox(width: 20,),
                    Container(width: 1,color: borderColor,height: 25,),
                    SizedBox(width: 10,),
                    Container(width: MediaQuery.of(context).size.width/1.5,height: 50,
                      alignment: Alignment.center,
                      child: TextField(
                        obscureText: true,
                        obscuringCharacter: '*',
                        controller: controllerPass,
                        style:TextStyle(fontFamily: 'regular',fontSize: 16,overflow:TextOverflow.ellipsis),
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: borderColor,width: 1)),
                          hintText: 'Password',hintStyle: TextStyle(fontFamily: 'regular'),
                          filled: true,
                          fillColor:  Colors.white,
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: const BorderSide(
                                  color: Colors.white,
                                  width: 1,
                                  style: BorderStyle.solid
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide:  BorderSide(
                                color: Colors.white,
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide:  BorderSide(
                                width: 1,
                                color: Colors.white,
                              )
                          ),

                        ),
                      ),),




                  ],
                ),
              ),

              SizedBox(height: 20,),

              //signup Btn
              InkWell(
                onTap: (){


                  Navigator.push(context, MaterialPageRoute(builder: (context)=>choiceScreen()));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 25,left: 25),
                  alignment: Alignment.topRight,
                  child: Text('Don\'t have an account?',style: blueRegular),
                ),
              ),

              SizedBox(
                height: 30,
              ),

              // Btn
              InkWell(
                onTap: () async {
                  String email = controllerEmail.text;
                  String pass = controllerPass.text;
                  if(email.isNotEmpty && pass.isNotEmpty)
                    {
                      print('$email $pass');
                      loginUser(context,email,pass);
                    }
                  else
                    {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Oops! Something went wrong.',style: TextStyle(fontFamily: 'semibold'),),duration: Duration(seconds: 2),backgroundColor: Colors.red,behavior: SnackBarBehavior.floating,));
                    }
                },
                child: Container(
                  margin: EdgeInsets.only(right: 25,left: 25),
                  decoration: roundedBlue,
                  height: 55,
                  alignment: Alignment.center,
                  child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 17,fontFamily: 'semibold')),

                ),
              ),

              //back to choice
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(right: 25,left: 25),
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: ()
                  {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>choiceScreen()));
                  },
                  child: Container(
                    width: 170,
                    height: 45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: borderColor,width: 1)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.keyboard_backspace,size: 22,color: darkText,),
                        Text(' Select Role',style: d1,textAlign: TextAlign.end),
                        SizedBox(width: 10,)
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 50,),
              Center(child: Text('@All Right Resversed 2023\n            GuruZone ©',style: d1Light,)),
              SizedBox(height: 150,),

            ],
          ),
        ),
      ),
    );
  }
}
