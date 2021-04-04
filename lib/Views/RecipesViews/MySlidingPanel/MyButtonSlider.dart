import 'package:flutter/material.dart';

/**
 * Ce Widget permet d'afficher un slider avec deux positions: Gauche et Droite (ici Instructions et Ingredients. il comprend deux fonctions de call back qui
 * permettent de gérer les conséquences du changement de position depuis le widget parent.
 */

class MyButtonSlider extends StatelessWidget {
  final Alignment alignment;
  final int speed;
  final String leftLabel;
  final String rightLabel;
  final TextStyle selectedTextStyle;
  final TextStyle unSelectedTextStyle;
  final Function onTapLeft; // call back lorsque l'on selectionne le bouton gauche
  final Function onTapRight; // call back lorsque l'on selectionne le bouton droite

  MyButtonSlider(this.leftLabel,this.rightLabel,this.alignment,this.speed,this.onTapLeft,this.onTapRight,this.selectedTextStyle,this.unSelectedTextStyle);

  @override
  Widget build(BuildContext context) {
    TextStyle _buttonLeftStyle = alignment == Alignment.centerLeft?selectedTextStyle:unSelectedTextStyle;
    TextStyle _buttonRightStyle = alignment == Alignment.centerRight?selectedTextStyle:unSelectedTextStyle;
    return
      Container(
        child:
            Stack(children:
            [
              AnimatedAlign(child:
                Container(width: 150, height: 50, padding: EdgeInsets.all(5),
                  decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(30)),)),
                alignment: alignment, duration: Duration(milliseconds: speed)),
              Container(child:
                Row(children:
                   [
                     Expanded(child:InkWell(child:Center(child:Text("Instructions",style:_buttonLeftStyle)),onTap: this.onTapLeft)),
                     Expanded(child:InkWell(child:Center(child:Text("Ingredients",style:_buttonRightStyle)),onTap:this.onTapRight))]
                  )
                ,height: 50),
          ])
      );
  }
}