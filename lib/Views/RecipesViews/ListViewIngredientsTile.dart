
import 'package:flutter/material.dart';
import 'package:flutterrecipe/Models/Ingredient.dart';

class ListViewIngredientsTile extends StatelessWidget {
  const ListViewIngredientsTile(this.ingredient, this.indice
      /*,this.parentContext*/);

  final Ingredient ingredient;
  final int indice;

  //final BuildContext parentContext;

  @override
  Widget build(BuildContext context) {
    print("ListViewIngredientsTile::build:instruction=" + ingredient.label);
    return
    ListTile(
      dense: true,
        title: Row(children:
    [
      Icon(Icons.circle,size: 10),Text(' '+ingredient.quantity+' '+ingredient.label,style: Theme.of(context).textTheme.bodyText2)
    ]));
  }
}
