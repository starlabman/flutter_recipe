import 'package:flutter/material.dart';
import 'package:flutterrecipe/Views/RecipesViews/MySlidingPanel/MyButtonSlider.dart';

/**
 * Ce widget intègre le bouton slider Instruction/Ingredients
 */

class MySlidingButton extends StatelessWidget {
  final Alignment alignement; // position gauche/droite selectionnée
  final Function onTapLeft; // action call back à exécuter lors de la bascule sur la position gauche
  final Function onTapRight;// action call back à exécuter lors de la bascule sur la position droite

  MySlidingButton(this.alignement,this.onTapLeft, this.onTapRight);

  @override
  Widget build(BuildContext context) {
  return
      Container
        (
          width: 320,
            padding: EdgeInsets.all(5),
            decoration:BoxDecoration(color: Color(0xFFF0F0F0),borderRadius: BorderRadius.all(Radius.circular(30)),),
            child: MyButtonSlider('Instructions','Ingredients',alignement,400,onTapLeft,onTapRight,Theme.of(context).textTheme.headline3,Theme.of(context).textTheme.headline4)
        );
  }

}
