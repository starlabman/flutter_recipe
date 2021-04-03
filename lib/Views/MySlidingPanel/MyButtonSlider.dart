import 'package:flutter/material.dart';

class MyButtonSlider extends StatelessWidget {
  final Alignment alignment;
  final int speed;
  final TextStyle selectedTextStyle;
  final TextStyle unSelectedTextStyle;
  final Function onTapLeft;
  final Function onTapRight;

  MyButtonSlider(this.alignment,this.speed,this.onTapLeft,this.onTapRight,this.selectedTextStyle,this.unSelectedTextStyle);

  @override
  Widget build(BuildContext context) {
    TextStyle _buttonLeftStyle = alignment == Alignment.centerLeft?selectedTextStyle:unSelectedTextStyle;
    TextStyle _buttonRightStyle = alignment == Alignment.centerRight?selectedTextStyle:unSelectedTextStyle;
    return
      Container(
        child:
            Stack(children:
            [
              AnimatedAlign(child:
                Container(width: 150, height: 50, padding: EdgeInsets.all(5),
                  decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(30)),)),
                alignment: alignment, duration: Duration(milliseconds: speed)),
              Container(child:
                Row(children:
                   [
                     Expanded(child:InkWell(child:Center(child:Text("Instructions",style:_buttonLeftStyle)),onTap: this.onTapLeft)),
                     Expanded(child:InkWell(child:Center(child:Text("Ingredients",style:_buttonRightStyle)),onTap:this.onTapRight))]
                  )
                ,height: 50),
          ])
      );
  }
}