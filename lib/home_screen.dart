import 'package:flutter/material.dart';
import 'package:wheretogo/component/button.dart';
import 'package:wheretogo/list_book.dart';
import 'package:wheretogo/profile.dart';

import 'component/list_post.dart';
import 'constants/contstant.dart';
import 'list_all_events.dart';

class HomeScreen extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  HomeScreen({this.heroTag, this.foodName, this.foodPrice});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController;
  List<String> image = [
    "https://media-cdn.tripadvisor.com/media/photo-s/11/6e/10/74/prague-tour-info.jpg",
    "https://lensofchad.files.wordpress.com/2017/12/gptempdownload-3-2.jpg?w=2560&h=1200&crop=1",
    "https://www.onethreeonefour.com/dist/img/city/cappadocia/cappadocia-sample-10.jpg"
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFff7BE57),
      appBar: AppBar(
        title: Text(
          "Decovery",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
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
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>BookListScreen()));
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: 350,
              height: 100,
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
            Container(
              height: 250,
              child: PageView.builder(
                controller: pageController,
                itemCount: image.length,
                itemBuilder: (context, position) {
                  return imageSlider(position);
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45.0),
                    topRight: Radius.circular(45.0),
                  ),
                  color: Colors.white),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Explore Categories ",
                      style: TextStyle(
                          fontSize: Constant.kTitleFont, color: Colors.grey),
                    ),
                    Container(
                      height: 60,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          CustomButton(
                            text: "Adventure",
                          ),
                          CustomButton(
                            text: "Sea",
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Text(
                        "Tranding",
                        style: TextStyle(
                            fontSize: Constant.kTitleFont, color: Colors.grey),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      height: 300,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          ListPost(),
                          ListPost(),
                          ListPost(),
                          ListPost(),
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Center(
                          child: GestureDetector(
                            child: Container(
                              width: 300,
                              height: 50,
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(color: Color(0xff707070))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "images/all_event.png",
                                    scale: 25,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 10.0),
                                  ),
                                  Text(
                                    "All events",
                                    style: TextStyle(
                                      fontSize: Constant.kNormalText,
                                      color: Color(0xffD75A4A),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context)=>AllEventsListScreen()));
                            },
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Center(
                          child: Container(
                            width: 300,
                            height: 50,
                            margin: EdgeInsets.only(top: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(color: Color(0xff707070))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Color(0xffD75A4A),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 10.0),
                                ),
                                Text(
                                  "Favorite events",
                                  style: TextStyle(
                                    fontSize: Constant.kNormalText,
                                    color: Color(0xffD75A4A),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  imageSlider(int index) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, widget) {
        return Center(
          child: SizedBox(
            height: 200,
            width: 300,
            child: widget,
          ),
        );
      },
      child: new ClipRRect(
        borderRadius: new BorderRadius.circular(15.0),
        child: Image.network(
          image[index],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
