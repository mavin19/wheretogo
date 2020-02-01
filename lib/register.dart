import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import 'constants/contstant.dart';
import 'constants/share_pref_keys.dart';
import 'home_screen.dart';

class RegisterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _RegisterPageState();

}

class _RegisterPageState extends State<RegisterPage>{
  bool _isLoading = false;
  final TextEditingController usernameController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController phoneNumberController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset('images/app_logo.jpg',width: 55,height: 55,),
                    Text("SIGN UP",style: TextStyle(fontSize: Constant.kTitleFont,color: Colors.grey),),
                    SizedBox(height: 30.0,),
                    Text("Fullname",style: TextStyle(fontSize: Constant.kNormalText,color: Colors.grey,fontWeight: FontWeight.bold),),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Jonh Cena',
                      ),
                      controller: usernameController,
                    ),
                    SizedBox(height: 30.0,),
                    Text("Email",style: TextStyle(fontSize: Constant.kNormalText,color: Colors.grey,fontWeight: FontWeight.bold),),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'example@gmail.com',
                      ),
                      controller: emailController,
                    ),
                    SizedBox(height: 30.0,),
                    Text("Phone number",style: TextStyle(fontSize: Constant.kNormalText,color: Colors.grey,fontWeight: FontWeight.bold),),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: '012345678',
                      ),
                      controller: phoneNumberController,
                    ),
                    SizedBox(height: 30.0,),
                    Text("Passoword",style: TextStyle(fontSize: Constant.kNormalText,color: Colors.grey,fontWeight: FontWeight.bold),),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Minimum 5',
                      ),
                      obscureText: true,
                      controller: passwordController,
                    ),
                    SizedBox(height: 25.0,),
                    RaisedButton(
                      textColor: Colors.white,
                      color: Color(Constant.kPrimaryColor),
                      child: Container(
                        width:150.0,
                        child: Center(child: Text("Sign up ")),
                      ),
                      onPressed: emailController.text == "" ||
                          passwordController.text == "" ||
                          usernameController.text == "" ||
                          phoneNumberController.text == ""
                          ? null
                          : () {
                        setState(() {
                          _isLoading = true;
                        });
                        signUp(emailController.text,
                            passwordController.text,
                            phoneNumberController.text,
                            usernameController.text);
                      },
                    ),
                  ],
                ),
              )
            ),

          ],
        ),
      ),
    );
  }
  signUp(String email, pass, phoneNumber, username) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {'email': email, 'password': pass, 'phone_number': phoneNumber, 'name':username};
    var jsonResponse = null;
    var response =
    await http.post(Uri.encodeFull("http://10.0.2.2:8000/api/signup"), body: data);
    print("respone ${jsonResponse}" );
    print(response.statusCode);
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        print("Data : ${jsonResponse['id']}");

        setState(() {
          _isLoading = false;
        });
        sharedPreferences.setString(
            SharePrefKeys.USER_ID, jsonResponse['id'].toString());
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) => HomeScreen()),
                (Route<dynamic> route) => false);
      }
      print("hello");
    } else {
      setState(() {
        _isLoading = false;
      });
      print(response.body);
    }
  }

}

