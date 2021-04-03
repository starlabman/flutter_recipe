
import 'package:flutter/material.dart';
import 'package:flutterrecipe/Models/Recipe.dart';
import 'package:flutterrecipe/Views/RecipesViews/ViewInfoPanel.dart';
import 'package:flutterrecipe/Views/RecipesViews/ViewPictureRecipe.dart';

import 'MyRecipeTabs.dart';

class MyRecipePage extends StatefulWidget
{
 Recipe recipe = null;
  @override
  _MyRecipePageState createState() => _MyRecipePageState();

}
class _MyRecipePageState extends State<MyRecipePage>
{
 //Recipe recipe;
  //Recipe recipe ;
  @override
  Widget build(BuildContext context) {
    if(widget.recipe == null)
    {
      Recipe.getRecipe().then((value) =>
      {setState(() {
        widget.recipe = value;
      })});
      return Column(
          children: [Text("Récupération: chargement de la recette.", style: Theme
              .of(context)
              .textTheme
              .caption), LinearProgressIndicator()]);
    }
    return
    Container(height: MediaQuery.of(context).size.height,
    color: Colors.white,
    child:
    Column(
    children: [
      ViewPictureRecipe(widget.recipe),
      Expanded(child: Container(color: Colors.red,
          child:Column(children:
        [
        ViewInfoPanel(widget.recipe),
        Expanded(child: MyRecipeTabs(widget.recipe))

    ],
      )
  ))
    ])
    );
  }

}