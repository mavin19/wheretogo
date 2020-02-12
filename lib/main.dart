import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wheretogo/book.dart';
import 'package:wheretogo/first_screen.dart';
import 'package:wheretogo/home_screen.dart';
import 'package:wheretogo/profile.dart';
import 'package:wheretogo/register.dart';
import 'package:wheretogo/screen/eventDetail_screen.dart';

import 'constants/share_pref_keys.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Color(0xFff7BE57)
      ),
      home: FirstScreen(),
    );
  }
}
class MainPage extends StatefulWidget {
@override
_MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  SharedPreferences sharedPreferences;

  @override
  void initState() {
    super.initState();
    print("Main Page State : init state");
    checkLoginStatus();
  }

  checkLoginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();
    print("IF ");
    if (sharedPreferences.getString(SharePrefKeys.USER_ID) == null) {
      print("IF ");

      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) => LoginPage()),
              (Route<dynamic> route) => false);
    } else {
      print("Else ");
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext) => HomeScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}
