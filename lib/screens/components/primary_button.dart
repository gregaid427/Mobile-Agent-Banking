import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color backgroundColor, textColor;

  const PrimaryButton({
     Key? key, required this.text,
     required this.press,
    this.textColor = Colors.white,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 40),
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          // minimumSize: Size(double.infinity, 0),
          backgroundColor: backgroundColor,
          padding: EdgeInsets.all(15.0),

        ),
        onPressed: press as void Function()?,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}