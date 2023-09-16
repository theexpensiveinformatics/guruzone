import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guruzone/screens/DoubtChatScreen.dart';
import 'package:guruzone/screens/RequestReplyScreen.dart';
import 'package:guruzone/screens/chatScreen.dart';
import 'package:guruzone/screens/choiceScreen.dart';
import 'package:guruzone/screens/guruScreen.dart';
import 'package:guruzone/screens/homeBottom.dart';
import 'package:guruzone/screens/homeScreen.dart';
import 'package:guruzone/screens/list.dart';
import 'package:guruzone/screens/logInScreenMentor.dart';
import 'package:guruzone/screens/mentorProfileScreen.dart';
import 'package:guruzone/screens/signUpScreenMentor.dart';
import 'package:guruzone/styles/backgrounds/chatText.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/components/mentorProfile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var controllerPass = TextEditingController();
    var controllerEmail = TextEditingController();

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF2492FF)),
        useMaterial3: true,
        textTheme: TextTheme(

          displayLarge:TextStyle(fontSize: 20,fontFamily: 'bold',color: darkText),
          displayMedium: TextStyle(fontSize: 18,fontFamily: 'semibold',color: darkText,),
          bodySmall: TextStyle(fontSize: 16,fontFamily: 'regular',color:lightText ),

        )
      ),

      home:logInScreenMentor(),


    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});





  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  static const SystemUiOverlayStyle overlayStyle = SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.red,
    systemNavigationBarIconBrightness: Brightness.light,
    systemNavigationBarDividerColor: Colors.blue,
  );


  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
