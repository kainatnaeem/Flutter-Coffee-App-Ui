import 'package:flutter/material.dart';

import 'constants.dart';


final lightThemeData = ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: bgColorLightTheme,
        colorScheme:ThemeData.light()
       .colorScheme
       .copyWith(secondary:  secondaryColorLightTheme,),
        textTheme: ThemeData.light().textTheme.copyWith(
        subtitle1:TextStyle(color:bodyTextColorLightTheme) ,
        headline4: TextStyle(color:textColorLightTheme)),
        elevatedButtonTheme: elevatedButtonThemeData,
      );

final darkThemeData = ThemeData(
  brightness: Brightness.dark,
  
  colorScheme:
      ThemeData.dark().colorScheme.copyWith(secondary: secondaryColorDarkTheme),
  scaffoldBackgroundColor: bgColorDarkTheme,
  textTheme: ThemeData.dark().textTheme
      .copyWith(bodyText2: TextStyle(color: bodyTextColorDarkTheme)),
  elevatedButtonTheme: elevatedButtonThemeData,

);
 final elevatedButtonThemeData= ElevatedButtonThemeData(
style: ElevatedButton.styleFrom(padding: EdgeInsets.all(8),
  
            shape: RoundedRectangleBorder(
  
                borderRadius: BorderRadius.circular(30),
  
              ),
 
            primary:Colors.white,
  
             onPrimary: Colors.black,
  
        ),
  
     

    );
