import 'package:coffeeappbyktech/constants.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class FirstWidgetCoffeeHouse extends StatelessWidget {
  const FirstWidgetCoffeeHouse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widgetHeight = MediaQuery.of(context).size.height;
      double widgetWidth = MediaQuery.of(context).size.width;
    return Expanded(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(height: widgetHeight*0.02),
              Text(
                "COFFEE HOUSE",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.bold, fontSize: widgetHeight * .06
                    ),
              ),
              SizedBox(height: widgetHeight * 0.01),
              Text(
                "Coffee Boosts energy levels, Coffee house is one of the best coffee shops in Mardan.",
                style: Theme.of(context).textTheme.subtitle1!.copyWith( fontSize: widgetHeight * .03),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: widgetHeight * 0.02),
              SizedBox(
height:widgetHeight * .06,
width:widgetWidth * .5,
                // height: 35,
                // width: 130,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text("Get Started", style: Theme.of(context).textTheme.subtitle1!.copyWith(color: textColorBlack, fontSize: widgetHeight * .03),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
