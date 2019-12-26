import 'package:flutter/material.dart';
import 'package:wheretogo/constants/contstant.dart';
import 'package:wheretogo/login.dart';

class FirstScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _FirstScreenState();

}

class _FirstScreenState extends State<FirstScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFff7BE57),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 15,
            child: Center(
              child: Text("Go?",style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold),),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex:1,
                  child: GestureDetector(
                    child: Container(
                      height: double.infinity,
                      color: Colors.blueAccent,
                      child: Center(child: Text('Login',style: TextStyle(color: Colors.white,fontSize: Constant.kNormalText,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                    ),
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                  ),
                ),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    color: Colors.white,
                    child: Center(child: Text('Guest',style: TextStyle(color: Colors.black,fontSize: Constant.kNormalText,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}