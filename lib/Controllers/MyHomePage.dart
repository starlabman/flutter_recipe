import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterrecipe/Controllers/MyRecipePage.dart';
import 'package:flutterrecipe/Views/MyHomePage/MyBottomNavigationBar.dart';

class MyHomePage extends StatefulWidget {

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  /*
  * Ce widget construit la Homepage de l'application. Il contient le scaffold de
  * base et gère la navigation entre les differents onglets de la page grace à
  * la bottomNavigationBar().
  * la variable privée _widgetOptions contient la liste des pages.
  * */
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();


}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 3;
   static List<Widget> _widgetOptions = <Widget>[
      Container(color: Colors.white,child:Text('Dashboard') ,),
      Container(color: Colors.white,child:Text('Exercices') ,),
      Container(color: Colors.white,child:Text('HomePage') ,),
      MyRecipePage(),
      Container(color: Colors.white,child:Text('Profile') ,)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    //print();
    return Scaffold(
      body: Center( child:_widgetOptions.elementAt(_selectedIndex),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: MyBottomNavigationBar.getMyBottomNavigationBar(_selectedIndex,_onItemTapped)
    );
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
  }
}