import 'package:flutter/material.dart';
import 'package:wheretogo/component/favorite_event_component.dart';
import 'package:wheretogo/component/full_list_event_component.dart';
import 'package:wheretogo/constants/contstant.dart';

class FavoriteScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _FavoriteScreenState();

}

class _FavoriteScreenState extends State<FavoriteScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(Constant.kPrimaryColor),
      appBar: AppBar(
        title: Text('Favorite'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            FavoriteEventComponent(),
          ],
        ),
      ),
    );
  }

}