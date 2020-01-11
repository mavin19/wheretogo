import 'package:flutter/material.dart';
import 'package:wheretogo/constants/contstant.dart';

class CustomButton extends StatelessWidget {
  final String text;

  const CustomButton({@required this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Container(
        width: 120,
        height: 30,
        margin: EdgeInsets.only(top: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color(Constant.kPrimaryColor),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: Constant.kNormalText,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

