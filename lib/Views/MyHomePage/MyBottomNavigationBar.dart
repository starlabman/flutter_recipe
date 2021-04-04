import 'package:flutter/material.dart';

class MyBottomNavigationBar
{
  static getMyBottomNavigationBar(_selectedIndex,_onItemTapped)
  {
    return BottomNavigationBar(items:
    [
      BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/icons/dashboardIcon.png')),label: 'Dashboard',),
      BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/icons/kettlebell.png')),label: 'Exercices',),
      BottomNavigationBarItem(icon:
        Container(height: 50,width: 50,decoration: BoxDecoration(color: Color(0xffAA3AB4BE),borderRadius: BorderRadius.all( Radius.circular(20)),),
                  child: ImageIcon(AssetImage('assets/icons/icon_add.png'),color: Colors.white,),),
        label: '',backgroundColor: Colors.white,),
      BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/icons/book-3.png')),label: 'Recipes', backgroundColor: Colors.white,),
      BottomNavigationBarItem(icon: CircleAvatar(backgroundImage:AssetImage('assets/pictures/julian-wan.png')),label: '',),
    ],
    currentIndex: _selectedIndex,
    onTap: _onItemTapped,
    );
  }
}
