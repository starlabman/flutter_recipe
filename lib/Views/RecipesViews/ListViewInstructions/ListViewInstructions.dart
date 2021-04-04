import 'package:flutter/material.dart';
import 'ListViewInstructionsTile.dart';
/**
 * Ce widget gère la génération de la liste view des instructions. Il construit cette liste avec le ListViewBuilder et la tile ListViewInstructionTile.
 * Il retourne un texte par défaut lors de l'absence d'instructions
 */

class ListViewInstructions extends StatelessWidget {

  final List<String> instructions;

  ListViewInstructions(this.instructions/*,this.parentContext*/);

  @override
  Widget build(BuildContext context) {

    if (this.instructions.length == 0)
      return Padding(child:Text('Aucune instructions détectée.',style: Theme.of(context).textTheme.caption),padding: const EdgeInsets.all(20),);
    print("j'ai trouvé "+instructions.length.toString()+" elements");
    instructions.forEach((element) {print(element);});
    return new ListView.builder(
        itemCount: this.instructions.length,
        padding: EdgeInsets.all(0),
        itemBuilder: (c,i) => new ListViewInstructionTile(instructions[i],i)
    );

  }

}