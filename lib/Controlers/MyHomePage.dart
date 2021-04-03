import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterrecipe/Controlers/MyRecipePage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  int _selectedIndex = 3;
   static List<Widget> _widgetOptions = <Widget>[
      Container(color: Colors.grey,child:Text('Dashboard') ,),
      Container(color: Colors.grey,child:Text('Exercices') ,),
      Container(color: Colors.grey,child:Text('HomePage') ,),
      MyRecipePage(),
      Container(color: Colors.grey,child:Text('Profile') ,)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  Widget build(BuildContext context) {

    //print();
    return Scaffold(
      body: Center( child:_widgetOptions.elementAt(_selectedIndex),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/dashboardIcon.png')),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/kettlebell.png')),
            label: 'Exercices',
          ),
          BottomNavigationBarItem(
            icon:
            Container(
              height: 50,
                width: 50,
                decoration: BoxDecoration(color: Color(0xffAA3AB4BE),
                borderRadius: BorderRadius.all( Radius.circular(20)),
                ),
                child: ImageIcon(AssetImage('assets/icons/icon_add.png'),color: Colors.white,),),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/book-3.png')),
            label: 'Recipes',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(backgroundImage:AssetImage('assets/pictures/julian-wan.png')),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
  }
}