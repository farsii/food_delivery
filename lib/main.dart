import 'package:flutter/material.dart';
import 'package:food_delivery/home/main_food_page.dart';

void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: food(),
  ));
}
class food extends StatefulWidget {
  const food({Key? key}) : super(key: key);

  @override
  _foodState createState() => _foodState();
}

class _foodState extends State<food> {
  @override
  Widget build(BuildContext context) {
    return mainfoodpage();
  }
}


