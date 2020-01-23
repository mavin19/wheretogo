import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wheretogo/constants/contstant.dart';

class RegisterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _RegisterPageState();

}

class _RegisterPageState extends State<RegisterPage>{
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
                    ),
                    SizedBox(height: 30.0,),
                    Text("Email",style: TextStyle(fontSize: Constant.kNormalText,color: Colors.grey,fontWeight: FontWeight.bold),),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'example@gmail.com',
                      ),
                    ),
                    SizedBox(height: 30.0,),
                    Text("Phone number",style: TextStyle(fontSize: Constant.kNormalText,color: Colors.grey,fontWeight: FontWeight.bold),),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: '012345678',
                      ),
                    ),
                    SizedBox(height: 30.0,),
                    Text("Passoword",style: TextStyle(fontSize: Constant.kNormalText,color: Colors.grey,fontWeight: FontWeight.bold),),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Minimum 5',
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 25.0,),
                    RaisedButton(
                      textColor: Colors.white,
                      color: Color(Constant.kPrimaryColor),
                      child: Container(
                        width:150.0,
                        child: Center(child: Text("LOGIN")),
                      ),
                      onPressed: (){},
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

}

