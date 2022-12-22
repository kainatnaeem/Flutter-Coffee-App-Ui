import 'package:coffeeappbyktech/constants.dart';
import 'package:flutter/material.dart';

class TabBarHome extends StatelessWidget {
  const TabBarHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      double widgetHeight =  MediaQuery.of(context).size.height ;
      double widgetWidth = MediaQuery.of(context).size.width ;
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: SizedBox(
        height:  widgetHeight *.09,
        child: AppBar(
          backgroundColor: textColorBlack,
          bottom: TabBar(
            labelColor: textColorLightTheme,
            indicatorColor: tabBarColorWhite,
            tabs: [
              Tab(
                child: Text("Hot Coffee", textAlign: TextAlign.center,style: Theme.of(context).textTheme.subtitle1!.copyWith( fontSize: widgetHeight * .02),),
              ),
              Tab(
                  child: Text(
                "Cold Coffee",style: Theme.of(context).textTheme.subtitle1!.copyWith( fontSize: widgetHeight * .02),
                textAlign: TextAlign.center,
              )),
              Tab(child: Text("Others", textAlign: TextAlign.center,style: Theme.of(context).textTheme.subtitle1!.copyWith( fontSize: widgetHeight * .02),)),
            ],
          ),
        ),
      ),
    );
  }
}
