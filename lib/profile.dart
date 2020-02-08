import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wheretogo/constants/contstant.dart';
import 'package:wheretogo/login.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfileStatus();
}

class _ProfileStatus extends State<ProfilePage> {
  Container _infomationBox({@required text}) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 5.0),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xAAFFFFFF),
          borderRadius: BorderRadius.all(Radius.circular(25.0))),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }

  //User information
  Container _userInfo(
      {@required name, @required email, @required phone_number}) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _infomationBox(text: name),
          _infomationBox(text: email),
          _infomationBox(text: phone_number),
        ],
      ),
    );
  }

  //Button grid
  Container _gridButton({@required String text, @required icon}) {
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
          color: Color(Constant.kPrimaryColor),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon),
          Text(
            text,
            style: TextStyle(fontSize: Constant.kNormalText),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(Constant.kPrimaryColor),
      appBar: AppBar(
        title: Text("Profile"),
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.userEdit,color: Colors.black,),
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.signOutAlt,color: Colors.black,),
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
            },
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(),
            ),
            Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, right: 25.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/default-profile.png"),
                      radius: 50.0,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: _userInfo(
                          name: "Karim Benzema",
                          email: "bigben@gmail.com",
                          phone_number: "0123456"),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(),
            ),
            Expanded(
              flex: 13,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45.0),
                      topRight: Radius.circular(45.0),
                    ),
                    color: Colors.white),
                height: 500,
                width: double.infinity,
                child: Container(
                  padding: EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 25.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 25.0,
                    crossAxisSpacing: 50.0,
                    children: <Widget>[
                      _gridButton(
                          text: "Booking", icon: FontAwesomeIcons.bookOpen),
                      _gridButton(
                          text: "Favorite", icon: FontAwesomeIcons.heart),
                      _gridButton(
                          text: "Currency", icon: FontAwesomeIcons.dollarSign),
                      _gridButton(
                          text: "About us", icon: FontAwesomeIcons.users),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
