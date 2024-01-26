import 'package:flutter/material.dart';


class IconWidgetItem extends StatelessWidget {
  final IconData iconItem;
  final Color colorItem;
  const IconWidgetItem({super.key, required this.iconItem, required this.colorItem});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: Icon(iconItem, color: colorItem,));
  }

  void onPressed() {
  }
}
