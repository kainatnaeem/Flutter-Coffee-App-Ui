import 'package:coffeeappbyktech/screens/detail_screen.dart';
import 'package:coffeeappbyktech/widgets/tabbarmainproduct.dart';
import 'package:flutter/material.dart';

import 'homecategories.dart';

class TabBarViewData extends StatelessWidget {
  const TabBarViewData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widgetHeight =  MediaQuery.of(context).size.height ;
      double widgetWidth = MediaQuery.of(context).size.width ;
    return Expanded(
      child: TabBarView(
        children: [
          // first tab bar view widget

          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .13,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                 //ktechmarketing
                 //ktechmarketing
                 // //ktechmarketing 
                  Categories(name: "cof6", imageUrl: "cof6", slug: ""),
                  Categories(name: "cof2", imageUrl: "cof2", slug: ""),
                  Categories(name: "cof3", imageUrl: "cof3", slug: ""),
                  Categories(name: "cof4", imageUrl: "cof4", slug: ""),
                  Categories(name: "cof5", imageUrl: "cof5", slug: ""),
                  Categories(name: "cof6", imageUrl: "cof6", slug: ""),
                ]),
              ),
              SizedBox(height: widgetHeight* 0.002),
              TabBarMainProduct()
            ],
          ),

           Container(
                height:widgetHeight* .9,
                child: Image.asset("images/cof6.jpg",height:100, width:double.infinity),
                
              ),
          // second tab bar viiew widget
        Container(
                height:widgetHeight* .9,
                child: Image.asset("images/cof6.jpg",height:100, width:double.infinity),
                
              ),
        ],
      ),
    );
  }
}
