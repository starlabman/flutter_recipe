import 'package:flutter/material.dart';
import 'package:flutterrecipe/Models/Ingredient.dart';

import 'ListViewIngredientsTile.dart';
import 'ListViewInstructionsTile.dart';

class ListViewIngredients extends StatelessWidget {

  final List<Ingredient> ingredients;
  //final BuildContext parentContext;

  ListViewIngredients(this.ingredients/*,this.parentContext*/);

  @override
  Widget build(BuildContext context) {

    if (this.ingredients.length == 0)
      return Padding(child:Text('Aucun ingredient détectée',style: Theme.of(context).textTheme.caption),padding: const EdgeInsets.all(20),);
    print("j'ai trouvé "+ingredients.length.toString()+" elements");
    ingredients.forEach((element) {print(element);});
    return new ListView.builder(
        itemCount: this.ingredients.length,
        //itemBuilder: (c,i) => new ListViewTileCursus(cursusList[i],parentContext),
        itemBuilder: (c,i) => new ListViewIngredientsTile(ingredients[i],i/*, parentContext*/)
      //itemBuilder: (c,i) => new ListViewTileHardSkill(skillList[i],parentContext),
    );

  }

}