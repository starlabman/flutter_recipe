import 'package:flutter/material.dart';
import 'package:flutterrecipe/Models/Recipe.dart';

class ViewInfoPanel_Item extends StatelessWidget
{
final Recipe _recipe;
final String _icone;
final String _label;

ViewInfoPanel_Item(this._recipe,this._icone,this._label);

@override
  Widget build(BuildContext context) {
  String _data = "";
  switch (_label)
  {
    case 'likes': _data=_recipe.numberLikes.toString();break;
    case 'kcals': _data=_recipe.kCal.toString();break;
    case 'mins': _data=_recipe.duration.toString();break;
  }

 return   Column(
   crossAxisAlignment: CrossAxisAlignment.start,
   children:
 [
   ImageIcon(AssetImage('assets/icons/'+_icone+'.png')),
   RichText(text: TextSpan(text:_data,style: Theme.of(context).textTheme.headline1,
       children:[TextSpan(text: " "),TextSpan(text: _label,style: Theme.of(context).textTheme.caption)])
   )
 ],);
  }}
