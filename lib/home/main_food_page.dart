import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/alltext/alltext.dart';
import 'package:food_delivery/alltext/smalltext.dart';
import 'package:food_delivery/home/foodpage.dart';
import 'package:food_delivery/utils/colors.dart';

class mainfoodpage extends StatefulWidget {
  const mainfoodpage({Key? key}) : super(key: key);

  @override
  _mainfoodpageState createState() => _mainfoodpageState();
}
class _mainfoodpageState extends State<mainfoodpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 50, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      alltext(text: "Bagladesh", color: AppColors.mainColor,),
                      Row(
                        children: [
                          smalltext (text: "Chittagong ", color: Colors.black),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    child: Icon(Icons.search, color: Colors.white,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(15),
                        color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          foodpage(),
        ],
      ),
    );
  }
}
