library consultor_tasks_pk;

import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  var onPressed;
  final Widget child;
  var style;
  CustomButton(
      {required Key key,
      @required this.onPressed,
      required this.child,
      this.style})
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  Color _iconColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: IconButton(
      icon: Icon(Icons.star, color: _iconColor),
      onPressed: () {
        setState(() {
          if (_iconColor == Colors.grey) {
            _iconColor = Colors.green;
          } else {
            _iconColor = Colors.grey;
          }
        });
      },
    ));
  }
}
