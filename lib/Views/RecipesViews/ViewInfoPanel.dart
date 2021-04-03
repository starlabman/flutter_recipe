import 'package:flutter/material.dart';
import 'package:flutterrecipe/Models/Recipe.dart';

import 'ViewInfoPanel_Item.dart';

class ViewInfoPanel extends StatelessWidget
{
  final Recipe recipe;

  ViewInfoPanel(this.recipe);

  @override
  Widget build(BuildContext context) {
    print(recipe.toString());
  return
  Container(color: Colors.white,
        child:
    Padding(padding: EdgeInsets.all(20),
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
        [
          ViewInfoPanel_Item(recipe,'heart','likes'),
          ViewInfoPanel_Item(recipe,'calories','kcals'),
          ViewInfoPanel_Item(recipe,'duration','mins')
        ],
      )
    )
  );
  }

}
