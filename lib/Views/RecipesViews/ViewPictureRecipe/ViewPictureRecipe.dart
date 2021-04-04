
import 'package:flutter/material.dart';
import 'package:flutterrecipe/Models/Recipe.dart';

import 'MyFloatingButton.dart';

/**
 * Ce Widget affiche l'image avec le titre de la recette ainsi que deux boutons flottants. Il charge les informations depuis la recette passée en paramètre.
 */
class ViewPictureRecipe extends StatelessWidget
{
  final Recipe recipe;

  ViewPictureRecipe(this.recipe);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter,
      children: [
        Image.asset('assets/pictures/'+recipe.picture+'.png'),
        Positioned(child:MyFloatingButton(Icon(Icons.arrow_back_ios,color:Colors.grey,size: 15 ),(){print("on tap back");}),top: 40,left: 30,),
        Positioned(child:MyFloatingButton(Image.asset('assets/icons/iconeMenuConfig.png'),(){print("on tap Bouton en barres");}),top: 40,right: 30,),
        Container(height: 100, decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [Colors.white10,Colors.white,],)),),
        Padding(padding: EdgeInsets.all(15),
                child:Center(child: Text(recipe.name,style: Theme.of(context).textTheme.headline1,))),
      ],
    );
  }

}

