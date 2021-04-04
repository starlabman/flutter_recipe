import 'package:flutter/material.dart';

class MyFloatingButton extends StatelessWidget {
  final Widget _icone;
  MyFloatingButton(this._icone);

  @override
  Widget build(BuildContext context) {
    return Container(width:43,height:43,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(15))),child:
      Center(child:
        TextButton(onPressed: ()=>{},
            child: _icone)));
  }
}