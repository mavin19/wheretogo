import 'package:flutter/material.dart';
import 'package:wheretogo/constants/contstant.dart';
import 'package:wheretogo/home_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: GestureDetector(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 200.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'images/app_logo.jpg',
                  width: 55,
                  height: 55,
                ),
                Text(
                  "WELCOME BACK",
                  style: TextStyle(
                      fontSize: Constant.kTitleFont, color: Colors.grey),
                ),
                Text(
                  "Sign in to continue",
                  style: TextStyle(
                      fontSize: Constant.kNormalText, color: Colors.grey),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  "Email",
                  style: TextStyle(
                      fontSize: Constant.kNormalText,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'example@gmail.com',
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                      fontSize: Constant.kNormalText,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Input your password here',
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 25.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RaisedButton(
                      textColor: Colors.white,
                      color: Color(Constant.kPrimaryColor),
                      child: Container(
                        width: 150.0,
                        child: Center(child: Text("LOGIN")),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                    ),
                    Text(
                      "Forgot password",
                      style: TextStyle(fontSize: Constant.kNormalText),
                    ),
                    SizedBox(
                      width: 5.0,
                    )
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't have account yet?",
                      style: TextStyle(fontSize: Constant.kNormalText),
                    ),
                    GestureDetector(
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: Constant.kNormalText,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        print("Sign up pressed");
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
      ),
    );
  }
}
