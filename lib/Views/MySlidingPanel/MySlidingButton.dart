import 'package:flutter/material.dart';
import 'package:flutterrecipe/Views/MySlidingPanel/MyButtonSlider.dart';

class MySlidingButton extends StatelessWidget {
  final Alignment alignement;
  final Function onTapLeft;
  final Function onTapRight;

  MySlidingButton(this.alignement,this.onTapLeft, this.onTapRight);

  @override
  Widget build(BuildContext context) {
  return
      Container
        (
          width: 320,
            padding: EdgeInsets.all(5),
            decoration:BoxDecoration(color: Color(0xFFF0F0F0),borderRadius: BorderRadius.all(Radius.circular(30)),),
            child: MyButtonSlider(alignement,400,onTapLeft,onTapRight,Theme.of(context).textTheme.headline3,Theme.of(context).textTheme.headline4)
        );
  }

}
