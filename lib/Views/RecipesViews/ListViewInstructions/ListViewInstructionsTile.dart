import 'package:flutter/material.dart';

/**
 * Ce widget affiche un élément de la liste d'ingrédients. Il est appelé par le ListViewBuilder dont il récupère l'indice de l'ingrédient dans la liste d'ingrédients.
 */
class ListViewInstructionTile extends StatelessWidget {

  const ListViewInstructionTile(this.instruction, this.indice);

  final String instruction;
  final int indice;

  @override
  Widget build(BuildContext context) {
    print("ListViewInstructionTile::build:instruction=" + instruction);
    return Card(child:
    ListTile(
      dense: true,contentPadding: EdgeInsets.all(0),
        leading: Text((indice+1).toString(),style: Theme.of(context).textTheme.headline2,),
        title: Text(instruction,style: Theme.of(context).textTheme.bodyText1)));
  }
}
