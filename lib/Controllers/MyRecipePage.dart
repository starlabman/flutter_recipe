import 'package:flutter/material.dart';
import 'package:flutterrecipe/Models/Recipe.dart';
import 'package:flutterrecipe/Views/RecipesViews/ViewInfoPanel/ViewInfoPanel.dart';
import 'package:flutterrecipe/Views/RecipesViews/ViewPictureRecipe/ViewPictureRecipe.dart';
import 'MyRecipeTabs.dart';

/** Ce widget gère la page Recipe. Il charge donc la recette en asynchrone et gère
 * son affichage dans l'application.
 */

class MyRecipePage extends StatefulWidget
{

  @override
  _MyRecipePageState createState() => _MyRecipePageState();

}
class _MyRecipePageState extends State<MyRecipePage>
{
  Recipe recipe;
  @override
  Widget build(BuildContext context) {
    if(recipe == null)
    {
      // Chargement asynchrone de la recette et mise à jour à la fin du chargement...
      Recipe.getRecipe().then((value) => {setState(() {recipe = value;})});
      return Column(children: [Text("Récupération: chargement de la recette.", style: Theme.of(context).textTheme.caption), LinearProgressIndicator()]);
    }
    return
    Container(height: MediaQuery.of(context).size.height, color: Colors.white,
      child:
        Column(children:
          [
            ViewPictureRecipe(recipe),
            Expanded(child:
              Column(children:
                [
                  ViewInfoPanel(recipe),
                  Expanded(child: MyRecipeTabs(recipe))
                ]))
          ])
    );
  }

}