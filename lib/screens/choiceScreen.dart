import 'package:flutter/material.dart';
import 'package:guruzone/screens/homeBottom.dart';
import 'package:guruzone/screens/homeScreen.dart';
import 'package:guruzone/screens/logInScreenMentor.dart';
import 'package:guruzone/screens/logInScreenStudent.dart';
import 'package:guruzone/screens/signUpScreenMentor.dart';
import 'package:guruzone/screens/signUpScreenStudent.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/h1.dart';
import 'package:guruzone/styles/texts/h2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class choiceScreen extends StatefulWidget {
  const choiceScreen({super.key});

  @override
  State<choiceScreen> createState() => _choiceScreenState();
}

class _choiceScreenState extends State<choiceScreen> {

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
        Navigator.push(context, MaterialPageRoute(builder: (context)=>homeBottom(token: token)));
      }
    });
  }

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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => logInScreenMentor(),)),
                  child: Container(
                    height: MediaQuery.of(context).size.height/4,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 25,right: 25),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: borderColor,width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Hero(tag:'student',child: Image.asset('assets/images/student.png',cacheWidth: 170)),
                        SizedBox(height: 12,),
                        Text('Student',style: TextStyle(color: darkText,fontSize: 25,fontFamily: 'bold'),),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                Container(
                  height: MediaQuery.of(context).size.height/4,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 25,right: 25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: borderColor,width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => logInScreenMentor(),));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Hero(tag:'tutor',child: Image.asset('assets/images/mentor.png',cacheWidth: 140,)),
                        SizedBox(height: 12,width: 15,),
                        Text('Mentor',style: TextStyle(color: darkText,fontSize: 25,fontFamily: 'bold'),),
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
