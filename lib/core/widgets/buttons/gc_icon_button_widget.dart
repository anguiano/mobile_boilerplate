import 'package:flutter/material.dart';

class GcIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final String display;  

  const GcIconButton(this.icon, this.onPressed, {this.display="float", super.key});

  @override
  Widget build(BuildContext context) {
    if (display=="float") {
      return FloatingActionButton(
        shape: const StadiumBorder(),
        onPressed: onPressed,
        child: Icon(icon),
      );
    }

    return IconButton(
        icon: Icon(icon),
        onPressed: onPressed,
      );
  }
    
}