import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../reponsive/layout_builders.dart';
import '../widgets/firstwidgetcoffeehouse.dart';
import '../widgets/secondwidgetcoffeehouse.dart';

class LoveCoffee extends StatefulWidget {
  const LoveCoffee({Key? key}) : super(key: key);

  @override
  State<LoveCoffee> createState() => _LoveCoffeeState();
}

class _LoveCoffeeState extends State<LoveCoffee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Get.textTheme.bodyText1!.color,
          onPressed: () => Get.changeThemeMode(
            Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
          ),
          child: Icon(Get.isDarkMode ? Icons.light_mode : Icons.dark_mode),
        ),
        body: Responsive(
          mobile: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              FirstWidgetCoffeeHouse(),
              SecondWidgetCoffeeHouse(),
            ],
          ),
          tab: Row(
            // crossAxisAlignment:CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FirstWidgetCoffeeHouse(),
              SecondWidgetCoffeeHouse(),
            ],
          ),
        ));
  }
}

class ResponsiveDEsign extends StatefulWidget {
  const ResponsiveDEsign({Key? key}) : super(key: key);

  @override
  State<ResponsiveDEsign> createState() => _ResponsiveDEsignState();
}

class _ResponsiveDEsignState extends State<ResponsiveDEsign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MediaQuery.of(context).orientation == Orientation.portrait
            ? Container(
                color: Colors.brown,
                child: Text("Ktech in Potrait"),
              )
            : Container(
                color: Colors.pink,
                child: Text("Ktech in Landscape"),
              ));
  }
}
