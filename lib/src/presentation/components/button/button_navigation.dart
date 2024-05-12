import 'package:flutter/material.dart';

class ButtonNavigation extends StatelessWidget {
  final String rout, label;
  final IconData icon;
  const ButtonNavigation({
    super.key,
    required this.rout,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => Navigator.pushNamed(context, rout),
      icon: Icon(icon),
      label: Text(label),
    );
  }
}
