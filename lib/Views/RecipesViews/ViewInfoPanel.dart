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
          ViewInfoPanelItem(recipe,'heart','likes'),
          ViewInfoPanelItem(recipe,'calories','kcals'),
          ViewInfoPanelItem(recipe,'duration','mins')
        ],
      )
    )
  );
  }

}
