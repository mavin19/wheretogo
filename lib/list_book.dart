import 'package:flutter/material.dart';
import 'package:wheretogo/component/full_list_event_component.dart';
import 'package:wheretogo/constants/contstant.dart';

class BookListScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _BookListScreenState();

}

class _BookListScreenState extends State<BookListScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(Constant.kPrimaryColor),
      appBar: AppBar(
        title: Text('Book'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            FullListEventComponent(),
          ],
        ),
      ),
    );
  }

}