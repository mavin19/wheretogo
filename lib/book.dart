import 'package:flutter/material.dart';
import 'constants/contstant.dart';
class BookPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _BookPageState();

}

class _BookPageState extends State<BookPage>{

  @override
  Widget build(BuildContext context) {
    Container _bookInformation(){
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Booking information",style: TextStyle(fontSize: Constant.kTitleFont,color: Colors.grey,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 25.0,
            ),
            Text("Title of Event",style: TextStyle(fontSize: Constant.kNormalText,color: Colors.grey,fontWeight: FontWeight.bold),),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Trip to kampot',
              ),
            ),
          ],
        ),
      );
    }
    Container _personalInfomation(){
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Personal information",style: TextStyle(fontSize: Constant.kTitleFont,color: Colors.grey,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 30.0,
            ),
            Text("Fullname",style: TextStyle(fontSize: Constant.kNormalText,color: Colors.grey,fontWeight: FontWeight.bold),),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Jonh Cena',
              ),
            ),
            SizedBox(height: 25.0,),
            Text("Email",style: TextStyle(fontSize: Constant.kNormalText,color: Colors.grey,fontWeight: FontWeight.bold),),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'example@gmail.com',
              ),
            ),
            SizedBox(height: 25.0,),
            Text("Phone number",style: TextStyle(fontSize: Constant.kNormalText,color: Colors.grey,fontWeight: FontWeight.bold),),
            TextFormField(
              decoration: InputDecoration(
                hintText: '012345678',
              ),
            ),
            SizedBox(height: 25.0,)
          ],
        ),
      );
    }

    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Book"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/app_logo.jpg',width: 55,height: 55,),
              SizedBox(
                height: 50.0,
              ),
              _personalInfomation(),
              SizedBox(
                height: 50.0,
              ),
              _bookInformation(),
            ],
          ),
        ),
      ),
    );
  }

}