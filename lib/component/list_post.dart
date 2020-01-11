import 'package:flutter/material.dart';
import 'package:wheretogo/constants/contstant.dart';

class ListPost extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 250.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.network("https://media-cdn.tripadvisor.com/media/photo-s/11/6e/10/74/prague-tour-info.jpg"),
            ListTile(
              title: Text("Title",
                style: TextStyle(fontSize: Constant.kTitleFont),
              ),
              subtitle: Text("Description",
                style: TextStyle(fontSize: Constant.kNormalText),
              ),

            )
          ],
        ),
      ),

    );
  }

}