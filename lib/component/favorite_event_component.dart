import 'package:flutter/material.dart';
import 'package:wheretogo/constants/contstant.dart';

class FavoriteEventComponent extends StatefulWidget{

  @override
  _FavoriteEventComponent createState()=>_FavoriteEventComponent();
}

class _FavoriteEventComponent extends State<FavoriteEventComponent>{
  Icon icon = new Icon(Icons.favorite_border);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    setState(() {
      (identical(icon, Icon(Icons.favorite)))?icon=Icon(Icons.favorite_border):icon=Icon(Icons.favorite);
      print("Hello");
    });
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white
        ),
        height: 150,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: 110,
                width: 130,
                child: Image.network("https://media-cdn.tripadvisor.com/media/photo-s/11/6e/10/74/prague-tour-info.jpg",fit: BoxFit.cover,),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.only(left: 10.0,),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Align(
                        alignment: FractionalOffset.topLeft,
                        child: ListTile(
                          title: Text("Title",
                            style: TextStyle(fontSize: Constant.kTitleFont),
                          ),
                          subtitle: Text("Date",
                            style: TextStyle(fontSize: Constant.kNormalText),
                          ),

                        ),
                      ),
                    ),

                    Expanded(
                      child: Align(
                        alignment: FractionalOffset.topLeft,
                        child: Text("Descriptioncvvvvvvvvvvvbnbrrrrrrrrrrrrrrrrrr",
                          style: TextStyle(fontSize: Constant.kNormalText, ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(left: 10.0,right: 5.0, top: 5.0, bottom: 5.0),
                child: Align(
                  alignment: FractionalOffset.topCenter,
//                  child: IconButton(
//                    icon: IconButton(icon: Icon(Icons.favorite_border),onPressed: null,color:Colors.pink,),
//                  ),
                  child: IconButton(
                    icon: icon,
                    color: Colors.pink
                  ),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}