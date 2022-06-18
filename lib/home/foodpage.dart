import 'package:flutter/material.dart';
import 'package:food_delivery/alltext/alltext.dart';
import 'package:food_delivery/alltext/iconNtext.dart';
import 'package:food_delivery/alltext/smalltext.dart';
import 'package:food_delivery/utils/colors.dart';

class foodpage extends StatefulWidget {
  const foodpage({Key? key}) : super(key: key);

  @override
  _foodpageState createState() => _foodpageState();
}

class _foodpageState extends State<foodpage> {
  PageController pageController = PageController(viewportFraction: 0.80);
  var currpvalue=0.0;
double _scalefactor=0.8;
double _height =280;
  @override
  void instate (){
    super.initState();
    pageController.addListener(() {
      setState(() {
        currpvalue =pageController.page!;
      });
    });
  }
  @override
  void dispose (){
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: PageView.builder(
        controller: pageController,
          itemCount: 7,
          itemBuilder: (context, position){

        return _builditem(position);
      }),
    );
  }
  //slideshow animation

 Widget _builditem (int index){
    Matrix4 matrix = new Matrix4.identity();
    if (index==currpvalue.floor()){
      var currscale = 1-(currpvalue-index)*(1-_scalefactor);
      var currtrans= _height*(1-currscale)/2;
      matrix=Matrix4.diagonal3Values(1, currscale, 1)..setTranslationRaw(0, currtrans, 0);
    } else if (index==currpvalue.floor()+1){
      var currscale = _scalefactor+(currpvalue-index+1)*(1-_scalefactor);
      var currtrans= _height*(1-currscale)/2;
      matrix=Matrix4.diagonal3Values(1, currscale, 1);
      matrix=Matrix4.diagonal3Values(1, currscale, 1)..setTranslationRaw(0, currtrans, 0);

    }

    return  Transform(
      transform: matrix,
      child: Stack(
            children: [
              Container(
                height: 280,
                margin: EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),

                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/food0.png")
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 140,
                  margin: EdgeInsets.only(left: 35, right: 35, bottom: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Container(
                    padding: EdgeInsets.only(top: 15, left: 15,right: 5, ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        alltext(text: "foood"),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Wrap(
                              children: List.generate(5, (index) => Icon(Icons.star,color: Colors.deepPurple, size: 20,)),

                            ),
                            SizedBox( width: 10,),
                            smalltext (text: "4.5"),
                            SizedBox( width: 10,),
                            smalltext (text: "120"),
                            SizedBox( width: 5,),
                            smalltext (text: "Comments"),


                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            iconNtext(icon: Icons.circle_sharp,
                                text: "normal",
                                iconcolor: AppColors.iconColor1),
                            SizedBox(width: 5,),
                            iconNtext(icon: Icons.location_on,
                                text: "1.7 KM",
                                iconcolor: AppColors.iconColor2),
                            SizedBox(width: 5,),
                            iconNtext(icon: Icons.access_alarms_rounded,
                                text: "32min",
                                iconcolor: AppColors.iconColor1)

                          ],
                        ),
                      ],
                    ),

                  ),
                ),
              ),
            ],

      ),
    );

  }
}
