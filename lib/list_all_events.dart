import 'package:flutter/material.dart';
import 'package:wheretogo/component/full_list_event_component.dart';
import 'package:wheretogo/constants/contstant.dart';
import 'package:wheretogo/profile.dart';

class AllEventsListScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _AllEventsListScreenState();

}

class _AllEventsListScreenState extends State<AllEventsListScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(Constant.kPrimaryColor),
      appBar: AppBar(
        title: Text('All Events'),
        elevation: 0.0,
        actions: <Widget>[
          new IconButton(
              icon: new Image.asset('images/profile.png'),
              iconSize: 25,
              padding: const EdgeInsets.only(right: 30),
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
              }),
          new IconButton(
              icon: new Image.asset('images/book.png'),
              iconSize: 25,
              padding: const EdgeInsets.only(right: 30),
              onPressed: null),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF757575),
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Color(0xFF757575),
                    fontSize: 14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  fillColor: Color(0xFFFFFFFF),
                  filled: true,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Filter",
                        style: TextStyle(
                          fontSize: Constant.kNormalText,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        width: 20,
                          height: 20,
                          child: Image.asset("images/filter.png",)
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
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
        ],
      ),
    );
  }

}