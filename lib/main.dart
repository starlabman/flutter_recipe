import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Controlers/MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Recipe',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
          backgroundColor: Colors.white,
          bottomAppBarColor: Colors.green,
          fontFamily: 'SoinSansNeue-medium',
          textTheme: TextTheme(
              button: TextStyle(fontSize: 10.0,color: Colors.grey,fontFamily: 'SoinSansNeue-medium'),
              headline1: TextStyle(fontSize: 33.0,fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'SoinSansNeue-bold'),
              headline2: TextStyle(fontSize: 33.0,fontWeight: FontWeight.bold,color: Color(0xFF20CAD1),fontFamily: 'SoinSansNeue-bold'),
              headline3: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Color(0xffAA3AB4BE),fontFamily: 'SoinSansNeue-bold'),
              headline4: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Color(0xFF2A2E2E),fontFamily: 'SoinSansNeue-bold'),
              bodyText1: TextStyle(fontSize: 14.0,color: Colors.grey/*Color(0xFF626C72)*/,fontFamily: 'SoinSansNeue-roman'),
              bodyText2: TextStyle(fontSize: 18.0,color: Colors.grey/*Color(0xFF626C72)*/,fontFamily: 'SoinSansNeue-roman'),
          ),
          iconTheme: IconThemeData(
            color: Color(0xFF20CAD1),
            size: 20
          ),
          tabBarTheme: TabBarTheme(
            labelColor: Color(0xFF20CAD1),
            unselectedLabelColor: Colors.black
          ),
          bottomNavigationBarTheme:
            BottomNavigationBarThemeData(
              selectedItemColor: Color(0xFF20CAD1),
              unselectedItemColor:  Colors.grey,
              selectedLabelStyle:Theme.of(context).textTheme.button,
              unselectedLabelStyle: Theme.of(context).textTheme.button,
              showSelectedLabels: true,
              showUnselectedLabels: true
      )
      ),
      home: MyHomePage(title: 'Flutter Recipe'),
    );
  }
}
