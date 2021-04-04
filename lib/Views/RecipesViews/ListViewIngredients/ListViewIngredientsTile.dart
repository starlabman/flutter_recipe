import 'package:flutter/material.dart';
import 'package:flutterrecipe/Models/Ingredient.dart';

/**
 * Ce widget affiche un élément de la liste d'ingrédients. Il est appelé par le ListViewBuilder dont il récupère l'indice de l'ingrédient dans la liste d'ingrédients.
 */
class ListViewIngredientsTile extends StatelessWidget {

  const ListViewIngredientsTile(this.ingredient, this.indice);

  final Ingredient ingredient;
  final int indice;

  @override
  Widget build(BuildContext context) {
    print("ListViewIngredientsTile::build:instruction=" + ingredient.label);
    return
    ListTile(
        dense: true,
        title: Row(children: [Icon(Icons.circle,size: 10),Text(' '+ingredient.quantity+' '+ingredient.label,style: Theme.of(context).textTheme.bodyText2)]));
  }
}
