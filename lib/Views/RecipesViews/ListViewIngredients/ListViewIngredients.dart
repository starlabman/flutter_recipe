import 'package:flutter/material.dart';
import 'package:flutterrecipe/Models/Ingredient.dart';
import 'ListViewIngredientsTile.dart';

/**
 * Ce widget gère la génération de la liste view des ingrédients. Il construit cette liste avec le ListViewBuilder et la tile ListViewIngredientsTile.
 * Il retourne un texte par défaut lors de l'absence d'ingrédients
 */

class ListViewIngredients extends StatelessWidget {

  final List<Ingredient> ingredients;

  ListViewIngredients(this.ingredients);

  @override
  Widget build(BuildContext context) {

    if (this.ingredients.length == 0)
        return Padding(child:Text('Aucun ingredient détectée',style: Theme.of(context).textTheme.caption),padding: const EdgeInsets.all(20),);

    print("j'ai trouvé "+ingredients.length.toString()+" elements");
    ingredients.forEach((element)
                    {print(element);});
    return new ListView.builder(itemCount: this.ingredients.length,itemBuilder: (c,i) => new ListViewIngredientsTile(ingredients[i],i));

  }

}