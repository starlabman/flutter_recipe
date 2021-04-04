import 'package:flutter/material.dart';
import 'package:flutterrecipe/Models/Recipe.dart';

/**
 * Ce Widget prend en charge l'affichage d'une icone et d'un texte. Il prend en charge les 3 cas
 * le nombre de like, le nombre de calories et le nombre de minutes de préparation pour la recette
 * passée en paramètre. Le nom de l'icone est passé en paramètre lors de l'appel.
 */
class ViewInfoPanelItem extends StatelessWidget
{
final Recipe _recipe;
final String _icone;
final String _label;

ViewInfoPanelItem(this._recipe,this._icone,this._label);

@override
  Widget build(BuildContext context) {
  String _data = "";
  switch (_label)
            {
              case 'likes': _data=_recipe.numberLikes.toString();break;
              case 'kcals': _data=_recipe.kCal.toString();break;
              case 'mins': _data=_recipe.duration.toString();break;
              default: _data = "-1"; // Cela ne doit pas arriver
            }
 return   Column(crossAxisAlignment: CrossAxisAlignment.start,
             children:
               [
                 ImageIcon(AssetImage('assets/icons/'+_icone+'.png')),
                 RichText(text: TextSpan(text:_data,style: Theme.of(context).textTheme.headline1,
                     children:[TextSpan(text: " "),TextSpan(text: _label,style: Theme.of(context).textTheme.caption)])
                 )
               ],);
  }
}
