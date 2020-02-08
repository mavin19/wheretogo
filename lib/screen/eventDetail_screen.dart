import 'package:flutter/material.dart';
import 'package:wheretogo/component/button.dart';
import 'package:wheretogo/component/list_post.dart';
import 'package:wheretogo/constants/contstant.dart';

class EventDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EventDetail();
  }
}

class _EventDetail extends State<EventDetail> {
  PageController pageController;
  List<String> image = [
    "https://media-cdn.tripadvisor.com/media/photo-s/11/6e/10/74/prague-tour-info.jpg",
    "https://lensofchad.files.wordpress.com/2017/12/gptempdownload-3-2.jpg?w=2560&h=1200&crop=1",
    "https://www.onethreeonefour.com/dist/img/city/cappadocia/cappadocia-sample-10.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(
            "Trip Detail",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.favorite),
                iconSize: 35,
                color: Colors.black,
                padding: const EdgeInsets.only(right: 20),
                onPressed: null),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
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
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
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
