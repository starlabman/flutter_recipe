
import 'package:flutter/material.dart';

class ListViewInstructionTile extends StatelessWidget {
  const ListViewInstructionTile(this.instruction, this.indice
      /*,this.parentContext*/);

  final String instruction;
  final int indice;

  //final BuildContext parentContext;

  @override
  Widget build(BuildContext context) {
    print("ListViewInstructionTile::build:instruction=" + instruction);
    return Card(child:
    ListTile(
        leading: Text((indice+1).toString(),style: Theme.of(context).textTheme.headline2,),
        title: Text(instruction,style: Theme.of(context).textTheme.bodyText1)));
  }
}
