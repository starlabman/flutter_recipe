import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrecipe/Models/Recipe.dart';
import 'package:flutterrecipe/Views/MySlidingPanel/MySlidingButton.dart';
import 'package:flutterrecipe/Views/RecipesViews/ListViewIngredients.dart';
import 'package:flutterrecipe/Views/RecipesViews/ListViewInstructions.dart';

class MyRecipeTabs extends StatefulWidget
{
  final Recipe recipe;

  MyRecipeTabs(this.recipe);

  @override
  _MyRecipeTabsState createState() => _MyRecipeTabsState();


}
class _MyRecipeTabsState  extends State<MyRecipeTabs>
{
  Alignment alignementBouton;

  @override
  void initState() {
    print("MyRecipeTabs:initState:alignementBouton ="+alignementBouton.toString());
    alignementBouton = Alignment.centerLeft;
  }

  @override
  Widget build(BuildContext context) {
    print("MyRecipeTabs:build:alignementBouton ="+alignementBouton.toString());
    bool showLeft = alignementBouton == Alignment.centerLeft;
    bool showRight = !showLeft;
          return
            Container(
                color: Colors.white,

                child:Column(
                    children:
                    [
                      MySlidingButton(alignementBouton,onTapLeft,onTapRight),
                      Expanded(child:
                      Row(children: [
                      Visibility(child:Expanded(child:ListViewInstructions(widget.recipe.instructions)),visible:showLeft,),
                        Visibility(child:Expanded(child:ListViewIngredients(widget.recipe.ingredients)),visible: showRight)
                      ],)
                      )
                    ])
            );
        }

void onTapLeft()
{
  setState(()=>
  {
    this.alignementBouton = Alignment.centerLeft,
  print('leftSizePanel deployed')
  });
}
  void onTapRight()
  {
    setState(()=>
    {
      this.alignementBouton = Alignment.centerRight,
    print('rightSizePanel deployed')
    });
  }
}


