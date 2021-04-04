import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrecipe/Models/Recipe.dart';
import 'package:flutterrecipe/Views/MySlidingPanel/MySlidingButton.dart';
import 'package:flutterrecipe/Views/RecipesViews/ListViewIngredients.dart';
import 'package:flutterrecipe/Views/RecipesViews/ListViewInstructions.dart';
import 'package:page_slider/page_slider.dart';

class MyRecipeTabs extends StatefulWidget
{
  final Recipe recipe;

  MyRecipeTabs(this.recipe);

  @override
  _MyRecipeTabsState createState() => _MyRecipeTabsState();


}
class _MyRecipeTabsState  extends State<MyRecipeTabs>
{
  GlobalKey<PageSliderState> _slider = GlobalKey();
  Alignment alignementBouton;

  @override
  void initState() {
    super.initState();
    print("MyRecipeTabs:initState:alignementBouton ="+alignementBouton.toString());
    alignementBouton = Alignment.centerLeft;

  }

  @override
  Widget build(BuildContext context) {
    print("MyRecipeTabs:build:alignementBouton ="+alignementBouton.toString());
    bool showLeft = alignementBouton == Alignment.centerLeft;
    bool showRight = !showLeft;
         /* return
            Column(
                    children:
                    [
                      MySlidingButton(alignementBouton,onTapLeft,onTapRight),
                      Expanded(child:
                      Row(children: [
                        Visibility(child:Expanded(child:ListViewInstructions(widget.recipe.instructions)),visible:showLeft,),
                        Visibility(child:Expanded(child:ListViewIngredients(widget.recipe.ingredients)),visible: showRight)
                      ])
                      )
                    ]
            );*/
    return
      Column(
          children:
          [
            MySlidingButton(alignementBouton,onTapLeft,onTapRight),
            Expanded(child:PageSlider(
            key: _slider,
            duration: Duration(milliseconds: 400),
              pages: <Widget>[
                Card(child:ListViewInstructions(widget.recipe.instructions)),
                 Card(child:ListViewIngredients(widget.recipe.ingredients))
              ]
            ))
          ]);
        }

void onTapLeft()
{
  setState(()=>
  {
    this.alignementBouton = Alignment.centerLeft,
    _slider.currentState.previous(),
  print('leftSizePanel deployed')
  });
}
  void onTapRight()
  {
    setState(()=>
    {
      this.alignementBouton = Alignment.centerRight,
      _slider.currentState.next(),
    print('rightSizePanel deployed')

    });
  }
}


