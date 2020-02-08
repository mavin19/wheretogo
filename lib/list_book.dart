import 'package:flutter/material.dart';
import 'package:wheretogo/component/full_list_event_component.dart';
import 'package:wheretogo/constants/contstant.dart';
import 'package:wheretogo/profile.dart';

class BookListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(Constant.kPrimaryColor),
      appBar: AppBar(
        title: Text('Book'),
        elevation: 0.0,
        actions: <Widget>[
          new IconButton(
              icon: new Image.asset('images/profile.png'),
              iconSize: 25,
              padding: const EdgeInsets.only(right: 30),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              }),
          new IconButton(
              icon: new Image.asset('images/book.png'),
              iconSize: 25,
              padding: const EdgeInsets.only(right: 30),
              onPressed: null),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            FullListEventComponent(),
            FullListEventComponent(),
            FullListEventComponent(),
            FullListEventComponent(),
            FullListEventComponent(),
            FullListEventComponent(),
            FullListEventComponent(),
            FullListEventComponent(),
          ],
        ),
      ),
    );
  }
}
