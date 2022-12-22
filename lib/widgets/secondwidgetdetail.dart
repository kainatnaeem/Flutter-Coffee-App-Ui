
import 'package:coffeeappbyktech/constants.dart';
import 'package:coffeeappbyktech/screens/love_coffee.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class SecondWidgetDetailScreen extends StatelessWidget {
  const SecondWidgetDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     double widgetHeight =  MediaQuery.of(context).size.height ;
      double widgetWidth = MediaQuery.of(context).size.width ;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Hot Coffee",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(
                          fontWeight: FontWeight.bold,
                          color: textColorBlack, fontSize:widgetHeight*.045),
                  textAlign: TextAlign.start,
                ),
                Spacer(),
                Row(
                  children: [
                    Container(
                        color: bgColorLightTheme,
                        height:
                            MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * .3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment:
                              CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.add),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 4.0, right: 4),
                              child: Text(
                                "2",
                                style: Theme.of(context)
                                    .textTheme
                                    .button!
                                    .copyWith(color: textColorBlack,fontSize: widgetHeight*.023),
                              ),
                            ),
                            Icon(Icons.remove,)
                          ],
                        )),
                  ],
                )
              ],
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.04),
            Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: Text(
                "About",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(
                        fontWeight: FontWeight.bold,
                        color: textColorBlack,fontSize: widgetHeight*0.045),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.02),
            Text(
              "Coffee Boosts energy levels, Coffee house is one of the best coffee shops in Mardan.",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: textColorBlack,fontSize: widgetHeight*0.028,),
              textAlign: TextAlign.start,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.03),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: textColorLightTheme,
                  primary: bgColorLightTheme, // Background color
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoveCoffee()));
                },
                child: Text("Order Now", style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: textColorBlack,fontSize: widgetHeight*0.026),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
