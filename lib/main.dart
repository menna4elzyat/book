import 'package:book/Colors.dart';
import 'package:flutter/material.dart';

import 'HomeList.dart';
import 'Login.dart';
import 'ShowSplash.dart';
import 'SignIn.dart';

import 'bottomDark.dart';
import 'home.dart';
import 'item.dart';

class Main extends StatelessWidget {
   Main({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        iconTheme: IconThemeData(color: Colors.black),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
         foregroundColor: Colors.black,
          titleTextStyle:  TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'Marhey',

          )

        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme:  TextTheme(
        bodyText1: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 15,
          fontFamily: 'Marhey',

        ),


       ),

        drawerTheme: DrawerThemeData(

          backgroundColor: Colors.white,
          surfaceTintColor: Colors.black
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.brown.shade400,
          unselectedItemColor: Colors.grey[600],

          unselectedLabelStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 10,
            fontFamily: 'Marhey',

          ),
          selectedLabelStyle: TextStyle(
            color: LightColorfor,
            fontWeight: FontWeight.bold,
            fontSize: 13,
            fontFamily: 'Marhey',

          ),
        )
      ) ,
      darkTheme: ThemeData(

          iconTheme: IconThemeData(color: Colors.white),
          drawerTheme: DrawerThemeData(

              backgroundColor: Colors.black,
              surfaceTintColor: Colors.white
          ),
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.black,

              titleTextStyle:  TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: 'Marhey',

              )

          ),
          scaffoldBackgroundColor: Colors.black,
          textTheme:  TextTheme(

            bodyText1: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
               fontSize: 15,
               fontFamily: 'Marhey',

            ),




          ),


          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.brown.shade400,
            unselectedItemColor: Colors.white,
            unselectedLabelStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 10,
              fontFamily: 'Marhey',

            ),
            selectedLabelStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 13,
              fontFamily: 'Marhey',

            ),
          )
      ),
      themeMode:   ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home:ShowSplash(),
    );
  }
}

void main(){
  runApp(Main());
}