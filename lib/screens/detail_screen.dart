import 'package:coffeeappbyktech/constants.dart';
import 'package:coffeeappbyktech/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../reponsive/layout_builders.dart';
import '../widgets/firstwidgetdetail.dart';
import '../widgets/secondwidgetdetail.dart';

class CoffeeDetail extends StatelessWidget {
  const CoffeeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: 
           Responsive(
             mobile: Column(
          children: [
                // SizedBox(height: MediaQuery.of(context).size.height * 0.1),

                Expanded(
                    child: FirstWidgetDetailScreen()),

                Expanded(
                  child: SecondWidgetDetailScreen(),
                ),
          ],
        ), tab: 
              Row(
              children: [
                
               
                ],
              ),


           )
        );
  }
}

