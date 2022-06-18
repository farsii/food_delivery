import 'package:flutter/cupertino.dart';
import 'package:food_delivery/alltext/smalltext.dart';

class iconNtext extends StatelessWidget {
  final IconData icon;
  final String text;

  final Color iconcolor;
  const iconNtext({Key? key,
    required this.icon,
    required this.text,

    required this.iconcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon, color: iconcolor,
        ),
        SizedBox(width: 5,),
        smalltext(text: text,)
      ],
    );
  }
}
