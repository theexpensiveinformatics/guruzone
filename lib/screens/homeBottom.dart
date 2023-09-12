import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guruzone/screens/DoubtChatScreen.dart';
import 'package:guruzone/screens/RequestReplyScreen.dart';
import 'package:guruzone/screens/guruScreen.dart';
import 'package:guruzone/screens/homeScreen.dart';
import 'package:guruzone/screens/newSearchScreen.dart';
import 'package:guruzone/screens/profileScreen.dart';
import 'package:guruzone/screens/searchScreen.dart';
import 'package:guruzone/styles/colors.dart';


//statefull
class homeBottom extends StatefulWidget
{
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
                          currentScreen=profileScreen();
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