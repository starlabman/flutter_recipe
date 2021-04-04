import 'package:flutter/material.dart';

/**
 * Ce widget gère l'affichage d'un bouton et d'un texte. Il recoit une fonction de call back pour gérer le click
 */
class MyFloatingButton extends StatelessWidget {
  final Widget _icone;
  final Function _onTap;
  MyFloatingButton(this._icone,this._onTap);

  @override
  Widget build(BuildContext context) {
    return Container(width:43,height:43,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(15))),child:
      Center(child:
        TextButton(onPressed: ()=>{_onTap},
            child: _icone)));
  }
}