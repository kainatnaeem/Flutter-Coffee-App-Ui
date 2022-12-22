import 'package:coffeeappbyktech/constants.dart';
import 'package:coffeeappbyktech/widgets/homesearchfield.dart';
import 'package:flutter/material.dart';

import '../reponsive/layout_builders.dart';
import '../widgets/homecategories.dart';
import '../widgets/tabbarhome.dart';
import '../widgets/tabrbardata.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double widgetHeight = MediaQuery.of(context).size.height;
    double widgetWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          drawer: Drawer(),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
              backgroundColor: Color(0xff915E3C),
              elevation: 0,
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(widgetHeight * .14),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                    child: HomeSearchField(),
                  ))),
          body: Responsive(
            mobile: SafeArea(
              child: Column(
                children: [
                  TabBarHome(),


                  // create widgets for each tab bar here
                  TabBarViewData(),
                ],
              ),
            ),
            tab: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: widgetHeight * .4,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(40.0), //add border radius

                      child: Image.asset(
                        "images/cof3.jpg",
                        height: widgetHeight * .4,
                        width: widgetWidth * .3,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 160,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text(
                        "Coffee Boosts energy levels, Coffee house is one of the best coffee shops in Mardan.",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: textColorLightTheme),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
