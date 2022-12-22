import 'package:flutter/material.dart';

class FirstWidgetDetailScreen extends StatelessWidget {
  const FirstWidgetDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     double widgetHeight =  MediaQuery.of(context).size.height ;
      double widgetWidth = MediaQuery.of(context).size.width ;
    return Container(
              decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage(
        "images/cof3.jpg",
      ),
      fit: BoxFit.cover,
    ),
    color: Colors.lightBlueAccent,
    borderRadius: BorderRadius.only(
      bottomRight: Radius.circular(40),
      bottomLeft: Radius.circular(40),
    ),
              ),

              height: widgetHeight*5,
              width: double.infinity,

              
            );
  }
}
