import 'package:final_project/constans.dart';
import 'package:flutter/material.dart';

class KRSContainer extends StatelessWidget {
  final String leftText;
  final String rightText;
  final Color backColor;
  final double height;
  const KRSContainer({
    Key key,
    @required this.leftText,
    @required this.rightText,
    this.backColor,
    this.height = 32,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Text(
              leftText,
              style: TextStyle(
                fontSize: 12,
                color: lTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Text(
              rightText,
              style: TextStyle(
                fontSize: 12,
                color: rTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      height: height,
      color: backColor,
      padding: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
    );
  }
}
