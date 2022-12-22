
import 'package:flutter/material.dart';

import '../screens/detail_screen.dart';

class TabBarMainProduct extends StatelessWidget {
  const TabBarMainProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widgetHeight =  MediaQuery.of(context).size.height ;
      double widgetWidth = MediaQuery.of(context).size.width ;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top:16.0),
        child: Container(
         height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
          ),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(40.0), //add border radius
    
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoffeeDetail()));
                    },
                    child: Image.asset(
                      "images/cof3.jpg",
                      height:  widgetHeight * .32,  // 180.0,
                      width: widgetWidth*.83, //250.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, right: 16, left: 16),
                child: Row(
                  children: [
                    Text("Hot Coffee\n\$20", style: Theme.of(context).textTheme.subtitle2!.copyWith(
                       fontSize: widgetHeight * .023, fontWeight: FontWeight.bold,
                      ),),
                    Spacer(),
                    Text("+",style: Theme.of(context).textTheme.subtitle2!.copyWith(
                       fontSize: widgetHeight * .023, fontWeight: FontWeight.bold,),
                    )    ],
                ),
              )
            ]),
          ),
    
        ),
      ),
    );
  }
}
