import 'package:flutter/material.dart';

class SecondWidgetCoffeeHouse extends StatelessWidget {
  const SecondWidgetCoffeeHouse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Image.asset(
      "images/coffeeimg.png",
      width: MediaQuery.of(context).size.width * 6,
      fit: BoxFit.cover,

    ));
  }
}
