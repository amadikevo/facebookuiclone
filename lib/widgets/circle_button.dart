import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton(
      {Key key,
      @required this.icon,
      @required this.iconColor,
      @required this.iconSize,
      @required this.onPressed})
      : super(key: key);

  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration:
          BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
      child: IconButton(
        icon: Icon(icon),
        iconSize: iconSize,
        color: iconColor,
        onPressed: onPressed,
      ),
    );
  }
}
