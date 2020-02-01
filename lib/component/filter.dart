import 'package:flutter/material.dart';
import 'package:wheretogo/constants/contstant.dart';

import 'button.dart';
//import 'package:flutter_range_slider/flutter_range_slider.dart';

class Filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var sliderValue = 0.0;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: 300.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45.0),
              bottomRight: Radius.circular(45.0),
            ),
            color: Colors.white),
        width: double.infinity,
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              height: 500.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Explore Categories",
                    style: TextStyle(
                        color: Colors.black, fontSize: Constant.kTitleFont),
                  ),
                  Container(
                    height: 70.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CustomButton(
                          text: "Advanture",
                        ),
                        CustomButton(
                          text: "Sea",
                        ),
                        CustomButton(
                          text: "Camp",
                        ),
                        CustomButton(
                          text: "Jungle",
                        ),
                        CustomButton(
                          text: "Festival",
                        ),
                        CustomButton(
                          text: "City",
                        ),
                        CustomButton(
                          text: "Event",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Price Range",
                    style: TextStyle(
                        color: Colors.black, fontSize: Constant.kTitleFont),
                  ),
                  Slider(
                    min: 0.0,
                    max: 5.0,
                    value: sliderValue,
                    activeColor: Color(0xffff520d),
                    onChanged: (newValue){

                    }
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
