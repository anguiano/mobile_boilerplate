import 'package:flutter/material.dart';

class GcIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const GcIconButton(this.icon, this.onPressed, {super.key});


  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
    
}