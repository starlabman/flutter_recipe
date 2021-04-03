import 'package:flutter/material.dart';

class ToggleButtonItem extends StatelessWidget
{
  final int index;
  final String label;

  const ToggleButtonItem({Key key,this.index,this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(label);
  }
}