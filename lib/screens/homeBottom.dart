import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guruzone/screens/DoubtChatScreen.dart';
import 'package:guruzone/screens/ItemListScreen.dart';
import 'package:guruzone/screens/RequestReplyScreen.dart';
import 'package:guruzone/screens/guruScreen.dart';
import 'package:guruzone/screens/homeScreen.dart';
import 'package:guruzone/screens/newSearchScreen.dart';
import 'package:guruzone/screens/profileScreen.dart';
import 'package:guruzone/screens/searchScreen.dart';
import 'package:guruzone/screens/studentProfileSelf.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:http/http.dart' as http;

String? username;
Future<void> fetchUserData(String token) async {
  final url = Uri.parse('https://vadodara-hackthon-4-0.vercel.app/api/v1/auth/user');

  try {
    final response = await http.get(
      url,
      headers: <String, String>{
        'Authorization': 'bearer $token',
      },
    );

    if (response.statusCode == 200) {
      // Successful request
      final Map<String, dynamic> userData = json.decode(response.body);
      print('User Data: $userData');
      username = userData['username'];
      print('///////////////////                $username');
    } else {
      // Request failed
      print('Request failed with status: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}


//statefull
class homeBottom extends StatefulWidget {
  final String token;
  homeBottom({required this.token});

  @override
  State<homeBottom> createState() => _homeBottomState();
}


//you can consider below code as a onCreate method of java.
class _homeBottomState extends State<homeBottom> {

  int currentTab = 0;
  final List<Widget> screens = [
    homeScreen(),
    newSearchScreen(),
    DoubtChatScreen(),
    profileScreen()
  ];

  @override
  void initState() {
    super.initState();
    // Call fetchUserData in the initState method
    fetchUserData(widget.token);
  }

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen =homeScreen();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // Navigation bar
      statusBarColor: currentTab ==  2 ? Colors.white : background,
      statusBarIconBrightness: Brightness.dark)),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: background,
        child: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
      ),
      floatingActionButton: SizedBox(
        width: 74,
        height: 74,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100)
          ),
          onPressed: (){
            setState(() {

              Navigator.push(context, MaterialPageRoute(builder: (context) => guruScreen(),));

            });
          },
          backgroundColor: blue,
          child: Container(height:36,width:36,child: Image.asset('assets/images/guru_white.png')),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        color: background,//notch
        child: BottomAppBar(

          notchMargin: 12,
          shape: CircularNotchedRectangle(),
          surfaceTintColor: Colors.white,
          shadowColor: Colors.black87,
          elevation: 30,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      shape: CircleBorder(eccentricity: 0),
                      onPressed: (){
                        setState(() {
                          currentScreen=homeScreen();
                          currentTab = 0;
                        });
                      },
                      minWidth: MediaQuery.of(context).size.width/6,
                      child: Container(width:22, height:double.infinity,
                          child:  currentTab == 0 ? Image.asset('assets/images/home_blue.png'):Image.asset('assets/images/home.png')),
                    ),

                    MaterialButton(
                      shape: CircleBorder(eccentricity: 0),
                      onPressed: (){
                        setState(() {
                          currentScreen=newSearchScreen();
                          currentTab = 1;
                        });
                      },
                      minWidth: MediaQuery.of(context).size.width/6,
                      child: Container(width:22, height:double.infinity,
                          child:  currentTab == 1 ? Image.asset('assets/images/search_blue.png'):Image.asset('assets/images/search.png')),
                    ),
                  ],
                ),
                Row(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                      shape: CircleBorder(eccentricity: 0),
                      onPressed: (){
                        setState(() {
                          currentScreen=DoubtChatScreen();
                          currentTab = 2;
                        });
                      },
                      minWidth: MediaQuery.of(context).size.width/6,
                      child: Container(width:22, height:double.infinity,
                          child:  currentTab == 2 ? Image.asset('assets/images/doubt_blue.png'):Image.asset('assets/images/doubt.png')),
                    ),

                    MaterialButton(
                      shape: CircleBorder(eccentricity: 0),
                      onPressed: (){
                        setState(() {
                          currentScreen=studentProfileSelf();
                          currentTab = 3;
                        });
                      },
                      minWidth: MediaQuery.of(context).size.width/6,
                      child: Container(width:22, height:22,
                          child:  currentTab == 3 ? Image.asset('assets/images/user_blue.png'):Image.asset('assets/images/user.png')),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}