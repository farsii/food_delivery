import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class alltext extends StatelessWidget {
  String text;
  final Color? color;
  double size;
  TextOverflow overflow;
  alltext({Key? key,
    required this.text,
    this.color= const Color(0xFF332d2b),
    this.size=20,
    this.overflow=TextOverflow.ellipsis,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
    overflow: overflow,
      maxLines: 1,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: size,
        color: color,
        fontWeight: FontWeight.w400,


      ),
    );
  }
}
