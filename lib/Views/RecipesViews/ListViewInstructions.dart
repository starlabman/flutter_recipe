import 'package:flutter/material.dart';

import 'ListViewInstructionsTile.dart';

class ListViewInstructions extends StatelessWidget {

  final List<String> instructions;
  //final BuildContext parentContext;

  ListViewInstructions(this.instructions/*,this.parentContext*/);

  @override
  Widget build(BuildContext context) {

    if (this.instructions.length == 0)
      return Padding(child:Text('Aucune instructions détectée.',style: Theme.of(context).textTheme.caption),padding: const EdgeInsets.all(20),);
    print("j'ai trouvé "+instructions.length.toString()+" elements");
    instructions.forEach((element) {print(element);});
    return new ListView.builder(
        itemCount: this.instructions.length,
        //itemBuilder: (c,i) => new ListViewTileCursus(cursusList[i],parentContext),
        itemBuilder: (c,i) => new ListViewInstructionTile(instructions[i],i/*, parentContext*/)
      //itemBuilder: (c,i) => new ListViewTileHardSkill(skillList[i],parentContext),
    );

  }

}