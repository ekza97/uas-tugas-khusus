import 'package:final_project/constans.dart';
import 'package:flutter/material.dart';

class KrsButton extends StatelessWidget {
  final String text;
  final Function press;
  const KrsButton({
    Key key,
    @required this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(39),
        child: ElevatedButton(
          onPressed: press,
          child: Text(text),
          style: ElevatedButton.styleFrom(
            primary: kPrimaryColor,
          ),
        ),
      ),
      height: 42,
      width: 150,
    );
  }
}
